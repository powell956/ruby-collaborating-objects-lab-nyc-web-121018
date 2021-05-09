class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end 

    def import
        self.files.each{|filename| Song.new_by_filename(filename)}
    end

    def files 
        @files ||= Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
    end 

end