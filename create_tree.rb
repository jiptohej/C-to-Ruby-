# create_tree.rb

def create_tree(directories, parent=".")
  directories.each_pair do |dir, files|
    path = File.join(parent, dir)
    Dir.mkdir path unless File.exists? path
    files.each do |filename, contents|
      if filename.respond_to? :each_pair #  es un directorio
       create_tree filename, path
      else
       open(File.join(path, filename), 'w') { |file| file << contents }
      end
    end
  end
end


estructura = {'dir1' => [['file1.txt', 'contenido1'],
                         ['file12.txt', 'contenido12'],
                         ['file1_n.txt', 'contenido1_n']],
              'dir2' => [['alfa.txt','contenido de alfa']],
              'dir3' => [],
              'dir4' => [{'dir4_1' => [['file4_1_1.txt', 'contenido1'],
                                       ['file4_1_2.txt', 'contenido12'],
                                       ['file4_1_n.txt', 'contenido1_n']],
                          'dir4_2' => [['file4_2_1.txt','contenido de alfa']],
                          'dir4_3' => []}]
              }



create_tree estructura



