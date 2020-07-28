extends Navigation2D

func ant_path(source, destination) -> PoolVector2Array:
	return get_simple_path(source, destination)
