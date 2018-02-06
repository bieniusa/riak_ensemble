-module(riak_ensemble_peer_intercepts).
-include("riak_ensemble_types.hrl").
-export([check_epoch/3, check_epoch_false/3]).

-define(M, riak_ensemble_peer_orig).

check_epoch_false(_Peer, _Epoch, _State) ->
    false.

check_epoch(Peer, Epoch, State) ->
    ?M:check_epoch_orig(Peer, Epoch, State).
