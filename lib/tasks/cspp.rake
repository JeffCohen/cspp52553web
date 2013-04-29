namespace :cspp do
  desc "Load sample venues"
  task :load_venues => :environment do
    venues = { "United Center" => "1901 W. Madison St, Chicago, IL",
     "Art Institute" => "Art Institute, Chicago, IL",
     "Millenium Park" => "Millenium Park, Chicago, IL",
     "1871" => "222 W. Merchandise Mart Plaza, Chicago, IL" }

    Venue.destroy_all
    venues.each do |venue_name, venue_address|
      Venue.create name: venue_name, address: venue_address
    end
  end

  desc "Load Spring Students"
  task :load_students => :environment do
    ExamUser.destroy_all
    students = { 'Jeff Cohen' => 'jeffcohen', "Raghu Betina" => 'rvb' }
    students.each do |name, id|
      ExamUser.create name: name, identifier: id
    end
  end

  desc "Load midterm questions"
  task :load_midterm => :environment do
    q = ExamQuestion.create(question: 'HTTP is best described as a...')
    q.exam_options.create description: 'a protocol used only by web browsers'
    q.exam_options.create description: 'a request-only protocol'
    q.exam_options.create description: 'a request-response protocol'
    q.exam_options.create description: 'a response-only protocol'

    q = ExamQuestion.create(question: 'HTTP requests can contain...')
    q.exam_options.create description: 'a "headers" list of key-value pairs'
    q.exam_options.create description: 'a body that can contain text data'
    q.exam_options.create description: 'a resource locator'
    q.exam_options.create description: 'a "footer" list of key-value pairs'

    q = ExamQuestion.create(question: 'A web-based API...')
    q.exam_options.create description: 'always returns JSON, XML, or HTML'
    q.exam_options.create description: 'is an agreement by which two programs can talk to each other'
    q.exam_options.create description: 'can never be used by a web browser directly'
    q.exam_options.create description: 'bypasses the typical HTTP requirements'

  end
end
