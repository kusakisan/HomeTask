create trigger [OnDeleted] on [Books]
	instead of delete as 
	update Books set IsDeleted = 1 where Id = (select Id from deleted)
	go

	create trigger [OnDeleted] on [Izdatelstva]
	instead of delete as 
	update Izdatelstva set IsDeleted = 1 where Id = (select Id from deleted)
	go

	create trigger [OnDeleted] on [Readers]
	instead of delete as 
	update Readers set IsDeleted = 1 where Id = (select Id from deleted)
	go

	create trigger [OnDeleted] on [Vidacha]
	instead of delete as 
	update Vidacha set IdDeleted = 1 where Id = (select Id from deleted)
	go