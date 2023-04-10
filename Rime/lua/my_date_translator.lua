local function my_date_translator(input, seg, env)
    if (input == "date") then
        local cand = Candidate("date", seg.start, seg._end, os.date("%m/%d/%Y"), "")
        cand.quality = 100
        yield(cand)
        local cand = Candidate("date", seg.start, seg._end, os.date("%x"), "")
        cand.quality = 100
        yield(cand)
    end
    if (input == "time") then
        local cand = Candidate("time", seg.start, seg._end, os.date("%I:%M"), "")
        cand.quality = 100
        yield(cand)
        local cand = Candidate("time", seg.start, seg._end, os.date("%I:%M %p"), "")
        cand.quality = 100
        yield(cand)
    end
    if (input == "week") then
        local cand = Candidate("time", seg.start, seg._end, os.date("%A"), "")
        cand.quality = 100
        yield(cand)
        local cand = Candidate("time", seg.start, seg._end, os.date("%a"), "")
        cand.quality = 100
        yield(cand)
    end
    if (input == "month") then
        local cand = Candidate("time", seg.start, seg._end, os.date("%B"), "")
        cand.quality = 100
        yield(cand)
        local cand = Candidate("time", seg.start, seg._end, os.date("%b"), "")
        cand.quality = 100
        yield(cand)
    end
end

return my_date_translator
