module ctrlreadandwrite(A, B, C, D, E, F, G, H, WR_En, WA_1, WA_0, RP_1, RP_0, RQ_1, RQ_0, R_EN);

	input A, B, C, D, E, F, G, H;
	output reg WR_En, WA_1, WA_0, RP_1, RP_0, RQ_1, RQ_0, R_EN;
	
	always@(A or B or C or D or E or F or G or H)
	begin
		if(A == 1 | H == 1)
		begin
			WR_En = 0;
			WA_1 = 0;
			WA_0 = 0;
			RP_1 = 1;
			RP_0 = 0;
			RQ_1 = 1;
			RQ_0 = 1;
			R_EN = 1;
		end
		
		else if( B == 1)
		begin
			WR_En = 0;
			WA_1 = 0;
			WA_0 = 0;
			RP_1 = 1;
			RP_0 = 0;
			RQ_1 = 1;
			RQ_0 = 1;
			R_EN = 1;
		end
		
		
		else if(C == 1)
		begin
			WR_En = 1;
			WA_1 = 1;
			WA_0 = 0;
			RP_1 = 0;
			RP_0 = 0;
			RQ_1 = 0;
			RQ_0 = 0;
			R_EN = 0;
		end
		else if(D == 1)
		begin
			WR_En = 0;
			WA_1 = 0;
			WA_0 = 0;
			RP_1 = 1;
			RP_0 = 0;
			RQ_1 = 0;
			RQ_0 = 0;
			R_EN = 1;
		end
		
		else if( E == 1 | F == 1)
		begin
			WR_En = 0;
			WA_1 = 0;
			WA_0 = 0;
			RP_1 = 1;
			RP_0 = 0;
			RQ_1 = 0;
			RQ_0 = 0;
			R_EN = 1;
		end
		
		
		
		else if( G == 1)
		begin
			WR_En = 1;
			WA_1 = 0;
			WA_0 = 0;
			RP_1 = 0;
			RP_0 = 0;
			RQ_1 = 0;
			RQ_0 = 0;
			R_EN = 0;
		end
	
	end
	
endmodule