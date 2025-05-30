switch global.starsadd {
	case 1:
		global.review = "1 Star - I have had 0 lobotomies since, and I am so sad."
		break;
	case 2:
		global.review = "2 Stars - I have had 1 lobotomy since, and I am okay."
		break;
	case 3:
		global.review = "3 Stars - Me have had 2 lobotomies since, and I am satisfied."
		break;
	case 4:
		global.review = "4 Stars - Me have had 3 lobotomy since, and I am happie."
		break;
	case 5:
		global.review = "5 Starts - Me have had many 4 lobotomy cents, and I am so very happie."
		break;
	case 6:
		global.review = "6 Starfs - Me have had many much of 5 lobotomy cents, and Me are yes much very happie."
		break;
}

global.stars += global.starsadd - 2
global.cellper = max(global.stars + 1, 1)