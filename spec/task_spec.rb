# require("rspec")
# require("pg")
# require("task")
require('spec_helper')

describe(Task) do

  describe(".not_done") do
    it("returns the not done tasks") do
      not_done_task1 = Task.create({:description => "gotta do it", :done => false})
      not_done_task2 = Task.create({:description => "gotta do it too", :done => false})
      not_done_tasks = [not_done_task1, not_done_task2]
      done_task = Task.create({:description => "done task", :done => true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end

  describe("#list") do
   it("tells which list it belongs to") do
     test_list = List.create({:name => "list"})
     test_task = Task.create({:description => "task", :list_id => test_list.id})
     expect(test_task.list()).to(eq(test_list))
   end
 end

  # describe("#list_id") do
  #   it("lets you read the list ID out") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1})
  #     expect(test_task.list_id()).to(eq(1))
  #   end
  # end

  # describe(".sort") do
  #   it("sorts by name") do
  #     task1 = Task.new({:description => "Zebra", :list_id => 1})
  #     task2 = Task.new({:description => "Apple", :list_id => 1})
  #     task1.save()
  #     task2.save()
  #     expect(Task.sort()).to(eq([task2, task1]))
  #   end
  # end


end
