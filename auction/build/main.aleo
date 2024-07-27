program ibrahimovicalex.aleo;

record Bis:
    owner as address.private;
    bidder as address.private;
    amount as u64.private;
    is_winner as boolean.private;


function place_bid:
    input r0 as address.private;
    input r1 as u64.private;
    assert.eq self.caller r0;
    cast aleo1vt7dulw9ev5w59hvqka9dgq2fuqhxwxpy2fs90d8skwwd37rrurqm73jrd r0 r1 false into r2 as Bis.record;
    output r2 as Bis.record;


function resolve:
    input r0 as Bis.record;
    input r1 as Bis.record;
    assert.eq self.caller aleo1vt7dulw9ev5w59hvqka9dgq2fuqhxwxpy2fs90d8skwwd37rrurqm73jrd;
    gte r0.amount r1.amount into r2;
    ternary r2 r0.owner r1.owner into r3;
    ternary r2 r0.bidder r1.bidder into r4;
    ternary r2 r0.amount r1.amount into r5;
    ternary r2 r0.is_winner r1.is_winner into r6;
    cast r3 r4 r5 r6 into r7 as Bis.record;
    output r7 as Bis.record;


function finish:
    input r0 as Bis.record;
    assert.eq self.caller aleo1vt7dulw9ev5w59hvqka9dgq2fuqhxwxpy2fs90d8skwwd37rrurqm73jrd;
    cast r0.bidder r0.bidder r0.amount true into r1 as Bis.record;
    output r1 as Bis.record;
