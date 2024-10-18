# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `fugit` gem.
# Please instead update this file by running `bin/tapioca gem fugit`.


# source://fugit//lib/fugit.rb#4
module Fugit
  class << self
    # source://fugit//lib/fugit/parse.rb#66
    def determine_type(s); end

    # source://fugit//lib/fugit/parse.rb#30
    def do_parse(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/parse.rb#16
    def do_parse_at(s); end

    # source://fugit//lib/fugit/parse.rb#13
    def do_parse_cron(s); end

    # source://fugit//lib/fugit/parse.rb#60
    def do_parse_cronish(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/parse.rb#14
    def do_parse_duration(s); end

    # source://fugit//lib/fugit/parse.rb#17
    def do_parse_in(s); end

    # source://fugit//lib/fugit/parse.rb#15
    def do_parse_nat(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/misc.rb#10
    def isostamp(show_date, show_time, show_usec, time); end

    # source://fugit//lib/fugit/parse.rb#19
    def parse(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/parse.rb#10
    def parse_at(s); end

    # source://fugit//lib/fugit/parse.rb#7
    def parse_cron(s); end

    # source://fugit//lib/fugit/parse.rb#53
    def parse_cronish(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/parse.rb#8
    def parse_duration(s); end

    # source://fugit//lib/fugit/parse.rb#11
    def parse_in(s); end

    # source://fugit//lib/fugit/parse.rb#9
    def parse_nat(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/misc.rb#28
    def time_to_plain_s(t = T.unsafe(nil), z = T.unsafe(nil)); end

    # source://fugit//lib/fugit/misc.rb#23
    def time_to_s(t); end

    # source://fugit//lib/fugit/misc.rb#33
    def time_to_zone_s(t = T.unsafe(nil)); end
  end
end

# source://fugit//lib/fugit/at.rb#5
module Fugit::At
  class << self
    # source://fugit//lib/fugit/at.rb#14
    def do_parse(s); end

    # source://fugit//lib/fugit/at.rb#9
    def parse(s); end
  end
end

# source://fugit//lib/fugit/cron.rb#5
class Fugit::Cron
  # source://fugit//lib/fugit/cron.rb#502
  def ==(o); end

  # Mostly used as a #next_time sanity check.
  # Avoid for "business" use, it's slow.
  #
  # 2017 is a non leap year (though it is preceded by
  # a leap second on 2016-12-31)
  #
  # Nota bene: cron with seconds are not supported.
  #
  # source://fugit//lib/fugit/cron.rb#400
  def brute_frequency(year = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#211
  def day_match?(nt); end

  # source://fugit//lib/fugit/cron.rb#502
  def eql?(o); end

  # source://fugit//lib/fugit/cron.rb#508
  def hash; end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#164
  def hour_match?(nt); end

  # Returns the value of attribute hours.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def hours; end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#241
  def match?(t); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#165
  def min_match?(nt); end

  # Returns the value of attribute minutes.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def minutes; end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#163
  def month_match?(nt); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#200
  def monthday_match?(nt); end

  # Returns the value of attribute monthdays.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def monthdays; end

  # Returns the value of attribute months.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def months; end

  # Returns an ::Enumerable instance that yields each "next time" in
  # succession
  #
  # source://fugit//lib/fugit/cron.rb#365
  def next(from = T.unsafe(nil)); end

  # See gh-15 and tst/iteration_count.rb
  #
  # Initially set to 1024 after seeing the worst case for #next_time
  # at 167 iterations, I placed it at 2048 after experimenting with
  # gh-18 and noticing some > 1024 for some experiments. 2048 should
  # be ok.
  #
  # source://fugit//lib/fugit/cron.rb#258
  def next_time(from = T.unsafe(nil)); end

  # Returns the value of attribute original.
  #
  # source://fugit//lib/fugit/cron.rb#20
  def original; end

  # Returns an ::Enumerable instance that yields each "previous time" in
  # succession
  #
  # source://fugit//lib/fugit/cron.rb#373
  def prev(from = T.unsafe(nil)); end

  # source://fugit//lib/fugit/cron.rb#310
  def previous_time(from = T.unsafe(nil)); end

  # source://fugit//lib/fugit/cron.rb#430
  def rough_frequency; end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#166
  def sec_match?(nt); end

  # Returns the value of attribute seconds.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def seconds; end

  # Returns the value of attribute timezone.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def timezone; end

  # source://fugit//lib/fugit/cron.rb#487
  def to_a; end

  # source://fugit//lib/fugit/cron.rb#66
  def to_cron_s; end

  # source://fugit//lib/fugit/cron.rb#492
  def to_h; end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#168
  def weekday_hash_match?(nt, hsh); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#184
  def weekday_match?(nt); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#179
  def weekday_modulo_match?(nt, mod); end

  # Returns the value of attribute weekdays.
  #
  # source://fugit//lib/fugit/cron.rb#22
  def weekdays; end

  # Returns an array of EtOrbi::EoTime instances that correspond to
  # the occurrences of the cron within the given time range
  #
  # source://fugit//lib/fugit/cron.rb#381
  def within(time_range, time_end = T.unsafe(nil)); end

  # Returns the value of attribute zone.
  #
  # source://fugit//lib/fugit/cron.rb#20
  def zone; end

  protected

  # source://fugit//lib/fugit/cron.rb#515
  def compact_month_days; end

  # source://fugit//lib/fugit/cron.rb#669
  def determine_hours(arr); end

  # source://fugit//lib/fugit/cron.rb#665
  def determine_minutes(arr); end

  # source://fugit//lib/fugit/cron.rb#673
  def determine_monthdays(arr); end

  # source://fugit//lib/fugit/cron.rb#677
  def determine_months(arr); end

  # source://fugit//lib/fugit/cron.rb#661
  def determine_seconds(arr); end

  # source://fugit//lib/fugit/cron.rb#708
  def determine_timezone(z); end

  # source://fugit//lib/fugit/cron.rb#681
  def determine_weekdays(arr); end

  # source://fugit//lib/fugit/cron.rb#644
  def do_determine(key, arr, min, max); end

  # source://fugit//lib/fugit/cron.rb#581
  def expand(min, max, r); end

  # source://fugit//lib/fugit/cron.rb#558
  def init(original, h); end

  # source://fugit//lib/fugit/cron.rb#602
  def range(min, max, sta, edn, sla); end

  # source://fugit//lib/fugit/cron.rb#531
  def rough_days; end

  # source://fugit//lib/fugit/cron.rb#715
  def weekdays_to_cron_s; end

  class << self
    # source://fugit//lib/fugit/cron.rb#46
    def do_parse(s); end

    # source://fugit//lib/fugit/cron.rb#27
    def new(original); end

    # source://fugit//lib/fugit/cron.rb#32
    def parse(s); end

    protected

    # source://fugit//lib/fugit/cron.rb#54
    def trunc(s); end
  end
end

# Used by Fugit::Cron#next and Fugit::Cron#prev
#
# source://fugit//lib/fugit/cron.rb#340
class Fugit::Cron::CronIterator
  include ::Enumerable

  # @return [CronIterator] a new instance of CronIterator
  #
  # source://fugit//lib/fugit/cron.rb#345
  def initialize(cron, direction, start); end

  # Returns the value of attribute cron.
  #
  # source://fugit//lib/fugit/cron.rb#343
  def cron; end

  # Returns the value of attribute current.
  #
  # source://fugit//lib/fugit/cron.rb#343
  def current; end

  # Returns the value of attribute direction.
  #
  # source://fugit//lib/fugit/cron.rb#343
  def direction; end

  # source://fugit//lib/fugit/cron.rb#353
  def each; end

  # Returns the value of attribute start.
  #
  # source://fugit//lib/fugit/cron.rb#343
  def start; end
end

# source://fugit//lib/fugit/cron.rb#556
Fugit::Cron::FREQUENCY_CACHE = T.let(T.unsafe(nil), Hash)

# source://fugit//lib/fugit/cron.rb#459
class Fugit::Cron::Frequency
  # @return [Frequency] a new instance of Frequency
  #
  # source://fugit//lib/fugit/cron.rb#464
  def initialize(deltas, span); end

  # Returns the value of attribute delta_max.
  #
  # source://fugit//lib/fugit/cron.rb#461
  def delta_max; end

  # Returns the value of attribute delta_min.
  #
  # source://fugit//lib/fugit/cron.rb#461
  def delta_min; end

  # Returns the value of attribute occurrences.
  #
  # source://fugit//lib/fugit/cron.rb#461
  def occurrences; end

  # Returns the value of attribute span.
  #
  # source://fugit//lib/fugit/cron.rb#461
  def span; end

  # Returns the value of attribute span_years.
  #
  # source://fugit//lib/fugit/cron.rb#462
  def span_years; end

  # source://fugit//lib/fugit/cron.rb#474
  def to_debug_s; end

  # Returns the value of attribute yearly_occurrences.
  #
  # source://fugit//lib/fugit/cron.rb#462
  def yearly_occurrences; end
end

# source://fugit//lib/fugit/cron.rb#17
Fugit::Cron::MAXDAYS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/cron.rb#249
Fugit::Cron::MAX_ITERATION_COUNT = T.let(T.unsafe(nil), Integer)

# source://fugit//lib/fugit/cron.rb#733
module Fugit::Cron::Parser
  include ::Raabro
  extend ::Raabro::ModuleMethods
  extend ::Raabro
  extend ::Fugit::Cron::Parser

  # source://fugit//lib/fugit/cron.rb#769
  def _dom(i); end

  # source://fugit//lib/fugit/cron.rb#771
  def _dow(i); end

  # source://fugit//lib/fugit/cron.rb#768
  def _hou(i); end

  # source://fugit//lib/fugit/cron.rb#770
  def _mon(i); end

  # source://fugit//lib/fugit/cron.rb#767
  def _mos(i); end

  # source://fugit//lib/fugit/cron.rb#828
  def _tz(i); end

  # source://fugit//lib/fugit/cron.rb#825
  def _tz_delta(i); end

  # source://fugit//lib/fugit/cron.rb#822
  def _tz_name(i); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#755
  def and?(i); end

  # source://fugit//lib/fugit/cron.rb#830
  def classic_cron(i); end

  # source://fugit//lib/fugit/cron.rb#753
  def comma(i); end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/cron.rb#754
  def comma?(i); end

  # source://fugit//lib/fugit/cron.rb#839
  def cron(i); end

  # source://fugit//lib/fugit/cron.rb#761
  def dom(i); end

  # source://fugit//lib/fugit/cron.rb#797
  def dom_elt(i); end

  # source://fugit//lib/fugit/cron.rb#763
  def dow(i); end

  # source://fugit//lib/fugit/cron.rb#799
  def dow_elt(i); end

  # source://fugit//lib/fugit/cron.rb#806
  def dow_elt_(i); end

  # source://fugit//lib/fugit/cron.rb#765
  def dow_hash(i); end

  # source://fugit//lib/fugit/cron.rb#804
  def h_dow(i); end

  # source://fugit//lib/fugit/cron.rb#760
  def hou(i); end

  # source://fugit//lib/fugit/cron.rb#796
  def hou_elt(i); end

  # source://fugit//lib/fugit/cron.rb#752
  def hyphen(i); end

  # source://fugit//lib/fugit/cron.rb#818
  def ldom_(i); end

  # source://fugit//lib/fugit/cron.rb#820
  def ldow(i); end

  # source://fugit//lib/fugit/cron.rb#817
  def lhou_(i); end

  # source://fugit//lib/fugit/cron.rb#811
  def list_dom(i); end

  # source://fugit//lib/fugit/cron.rb#813
  def list_dow(i); end

  # source://fugit//lib/fugit/cron.rb#810
  def list_hou(i); end

  # source://fugit//lib/fugit/cron.rb#809
  def list_min(i); end

  # source://fugit//lib/fugit/cron.rb#812
  def list_mon(i); end

  # source://fugit//lib/fugit/cron.rb#808
  def list_sec(i); end

  # source://fugit//lib/fugit/cron.rb#816
  def lmin_(i); end

  # source://fugit//lib/fugit/cron.rb#819
  def lmon_(i); end

  # source://fugit//lib/fugit/cron.rb#815
  def lsec_(i); end

  # source://fugit//lib/fugit/cron.rb#801
  def mod(i); end

  # source://fugit//lib/fugit/cron.rb#803
  def mod_dow(i); end

  # source://fugit//lib/fugit/cron.rb#762
  def mon(i); end

  # source://fugit//lib/fugit/cron.rb#798
  def mon_elt(i); end

  # min or sec
  #
  # source://fugit//lib/fugit/cron.rb#759
  def mos(i); end

  # ssws: slash or sorws
  #
  # source://fugit//lib/fugit/cron.rb#795
  def mos_elt(i); end

  # source://fugit//lib/fugit/cron.rb#776
  def r_dom(i); end

  # source://fugit//lib/fugit/cron.rb#778
  def r_dow(i); end

  # source://fugit//lib/fugit/cron.rb#775
  def r_hou(i); end

  # source://fugit//lib/fugit/cron.rb#777
  def r_mon(i); end

  # r: range
  #
  # source://fugit//lib/fugit/cron.rb#774
  def r_mos(i); end

  # rewriting the parsed tree
  #
  # source://fugit//lib/fugit/cron.rb#845
  def rewrite_bound(k, t); end

  # source://fugit//lib/fugit/cron.rb#906
  def rewrite_cron(t); end

  # source://fugit//lib/fugit/cron.rb#863
  def rewrite_elt(k, t); end

  # source://fugit//lib/fugit/cron.rb#891
  def rewrite_entry(t); end

  # source://fugit//lib/fugit/cron.rb#855
  def rewrite_mod(k, t); end

  # source://fugit//lib/fugit/cron.rb#898
  def rewrite_tz(t); end

  # piece parsers bottom to top
  #
  # source://fugit//lib/fugit/cron.rb#750
  def s(i); end

  # source://fugit//lib/fugit/cron.rb#834
  def second_cron(i); end

  # source://fugit//lib/fugit/cron.rb#757
  def slash(i); end

  # source://fugit//lib/fugit/cron.rb#783
  def sor_dom(i); end

  # source://fugit//lib/fugit/cron.rb#785
  def sor_dow(i); end

  # source://fugit//lib/fugit/cron.rb#782
  def sor_hou(i); end

  # source://fugit//lib/fugit/cron.rb#784
  def sor_mon(i); end

  # sor: star or range
  #
  # source://fugit//lib/fugit/cron.rb#781
  def sor_mos(i); end

  # source://fugit//lib/fugit/cron.rb#790
  def sorws_dom(i); end

  # source://fugit//lib/fugit/cron.rb#792
  def sorws_dow(i); end

  # source://fugit//lib/fugit/cron.rb#789
  def sorws_hou(i); end

  # source://fugit//lib/fugit/cron.rb#791
  def sorws_mon(i); end

  # sorws: star or range with[out] slash
  #
  # source://fugit//lib/fugit/cron.rb#788
  def sorws_mos(i); end

  # source://fugit//lib/fugit/cron.rb#751
  def star(i); end
end

# source://fugit//lib/fugit/cron.rb#740
Fugit::Cron::Parser::DOW_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/cron.rb#743
Fugit::Cron::Parser::MONTHS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/cron.rb#745
Fugit::Cron::Parser::MONTH_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/cron.rb#735
Fugit::Cron::Parser::WEEKDAYS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/cron.rb#738
Fugit::Cron::Parser::WEEKDS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/cron.rb#424
Fugit::Cron::SLOTS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/cron.rb#7
Fugit::Cron::SPECIALS = T.let(T.unsafe(nil), Hash)

# source://fugit//lib/fugit/cron.rb#79
class Fugit::Cron::TimeCursor
  # @return [TimeCursor] a new instance of TimeCursor
  #
  # source://fugit//lib/fugit/cron.rb#81
  def initialize(cron, t); end

  # source://fugit//lib/fugit/cron.rb#93
  def day; end

  # source://fugit//lib/fugit/cron.rb#96
  def dec(i); end

  # source://fugit//lib/fugit/cron.rb#145
  def dec_day; end

  # source://fugit//lib/fugit/cron.rb#148
  def dec_hour; end

  # source://fugit//lib/fugit/cron.rb#151
  def dec_min; end

  # source://fugit//lib/fugit/cron.rb#141
  def dec_month; end

  # source://fugit//lib/fugit/cron.rb#155
  def dec_sec; end

  # source://fugit//lib/fugit/cron.rb#93
  def hour; end

  # source://fugit//lib/fugit/cron.rb#95
  def inc(i); end

  # source://fugit//lib/fugit/cron.rb#109
  def inc_day; end

  # source://fugit//lib/fugit/cron.rb#126
  def inc_hour; end

  # source://fugit//lib/fugit/cron.rb#129
  def inc_min; end

  # source://fugit//lib/fugit/cron.rb#98
  def inc_month; end

  # source://fugit//lib/fugit/cron.rb#133
  def inc_sec; end

  # source://fugit//lib/fugit/cron.rb#93
  def min; end

  # source://fugit//lib/fugit/cron.rb#93
  def month; end

  # source://fugit//lib/fugit/cron.rb#93
  def rday; end

  # source://fugit//lib/fugit/cron.rb#93
  def rweek; end

  # source://fugit//lib/fugit/cron.rb#93
  def sec; end

  # source://fugit//lib/fugit/cron.rb#87
  def time; end

  # source://fugit//lib/fugit/cron.rb#90
  def to_i; end

  # source://fugit//lib/fugit/cron.rb#88
  def to_t; end

  # source://fugit//lib/fugit/cron.rb#93
  def wday; end

  # source://fugit//lib/fugit/cron.rb#93
  def wday_in_month; end

  # source://fugit//lib/fugit/cron.rb#93
  def year; end
end

# source://fugit//lib/fugit/misc.rb#5
Fugit::DAY_S = T.let(T.unsafe(nil), Integer)

# source://fugit//lib/fugit/duration.rb#5
class Fugit::Duration
  # source://fugit//lib/fugit/duration.rb#255
  def +(a); end

  # source://fugit//lib/fugit/duration.rb#268
  def -(a); end

  # source://fugit//lib/fugit/duration.rb#199
  def -@; end

  # source://fugit//lib/fugit/duration.rb#281
  def ==(o); end

  # source://fugit//lib/fugit/duration.rb#255
  def add(a); end

  # source://fugit//lib/fugit/duration.rb#216
  def add_duration(d); end

  # source://fugit//lib/fugit/duration.rb#208
  def add_numeric(n); end

  # source://fugit//lib/fugit/duration.rb#223
  def add_to_time(t); end

  # source://fugit//lib/fugit/duration.rb#163
  def deflate(options = T.unsafe(nil)); end

  # Returns a copy of this duration, omitting its seconds.
  #
  # source://fugit//lib/fugit/duration.rb#299
  def drop_seconds; end

  # source://fugit//lib/fugit/duration.rb#281
  def eql?(o); end

  # Returns the value of attribute h.
  #
  # source://fugit//lib/fugit/duration.rb#7
  def h; end

  # source://fugit//lib/fugit/duration.rb#287
  def hash; end

  # source://fugit//lib/fugit/duration.rb#143
  def inflate; end

  # source://fugit//lib/fugit/duration.rb#292
  def next_time(from = T.unsafe(nil)); end

  # source://fugit//lib/fugit/duration.rb#199
  def opposite; end

  # Returns the value of attribute options.
  #
  # source://fugit//lib/fugit/duration.rb#7
  def options; end

  # Returns the value of attribute original.
  #
  # source://fugit//lib/fugit/duration.rb#7
  def original; end

  # source://fugit//lib/fugit/duration.rb#268
  def subtract(a); end

  # For now, let's alias to #h
  #
  # source://fugit//lib/fugit/duration.rb#128
  def to_h; end

  # source://fugit//lib/fugit/duration.rb#90
  def to_iso_s; end

  # source://fugit//lib/fugit/duration.rb#109
  def to_long_s(opts = T.unsafe(nil)); end

  # source://fugit//lib/fugit/duration.rb#87
  def to_plain_s; end

  # source://fugit//lib/fugit/duration.rb#130
  def to_rufus_h; end

  # source://fugit//lib/fugit/duration.rb#88
  def to_rufus_s; end

  # Warning: this is an "approximation", months are 30 days and years are
  # 365 days, ...
  #
  # source://fugit//lib/fugit/duration.rb#138
  def to_sec; end

  protected

  # source://fugit//lib/fugit/duration.rb#76
  def _to_s(key); end

  # source://fugit//lib/fugit/duration.rb#310
  def init(original, options, h); end

  class << self
    # source://fugit//lib/fugit/duration.rb#51
    def common_rewrite_dur(t); end

    # source://fugit//lib/fugit/duration.rb#41
    def do_parse(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/duration.rb#11
    def new(s); end

    # source://fugit//lib/fugit/duration.rb#16
    def parse(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/duration.rb#48
    def to_iso_s(o); end

    # source://fugit//lib/fugit/duration.rb#49
    def to_long_s(o, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/duration.rb#47
    def to_plain_s(o); end
  end
end

# source://fugit//lib/fugit/duration.rb#72
Fugit::Duration::INFLA_KEYS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/duration.rb#374
module Fugit::Duration::IsoParser
  include ::Raabro
  extend ::Raabro::ModuleMethods
  extend ::Raabro
  extend ::Fugit::Duration::IsoParser

  # source://fugit//lib/fugit/duration.rb#392
  def date(i); end

  # source://fugit//lib/fugit/duration.rb#384
  def day(i); end

  # source://fugit//lib/fugit/duration.rb#389
  def delt(i); end

  # source://fugit//lib/fugit/duration.rb#396
  def dur(i); end

  # source://fugit//lib/fugit/duration.rb#385
  def hou(i); end

  # source://fugit//lib/fugit/duration.rb#386
  def min(i); end

  # source://fugit//lib/fugit/duration.rb#382
  def mon(i); end

  # piece parsers bottom to top
  #
  # source://fugit//lib/fugit/duration.rb#378
  def p(i); end

  # rewrite parsed tree
  #
  # source://fugit//lib/fugit/duration.rb#400
  def rewrite_dur(t); end

  # source://fugit//lib/fugit/duration.rb#387
  def sec(i); end

  # source://fugit//lib/fugit/duration.rb#379
  def t(i); end

  # source://fugit//lib/fugit/duration.rb#394
  def t_time(i); end

  # source://fugit//lib/fugit/duration.rb#390
  def telt(i); end

  # source://fugit//lib/fugit/duration.rb#393
  def time(i); end

  # source://fugit//lib/fugit/duration.rb#383
  def wee(i); end

  # source://fugit//lib/fugit/duration.rb#381
  def yea(i); end
end

# source://fugit//lib/fugit/duration.rb#63
Fugit::Duration::KEYS = T.let(T.unsafe(nil), Hash)

# source://fugit//lib/fugit/duration.rb#72
Fugit::Duration::NON_INFLA_KEYS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/duration.rb#325
module Fugit::Duration::Parser
  include ::Raabro
  extend ::Raabro::ModuleMethods
  extend ::Raabro
  extend ::Fugit::Duration::Parser

  # source://fugit//lib/fugit/duration.rb#334
  def day(i); end

  # source://fugit//lib/fugit/duration.rb#346
  def dur(i); end

  # source://fugit//lib/fugit/duration.rb#341
  def elt(i); end

  # source://fugit//lib/fugit/duration.rb#335
  def hou(i); end

  # rewrite parsed tree
  #
  # source://fugit//lib/fugit/duration.rb#350
  def merge(h0, h1); end

  # source://fugit//lib/fugit/duration.rb#336
  def min(i); end

  # source://fugit//lib/fugit/duration.rb#332
  def mon(i); end

  # source://fugit//lib/fugit/duration.rb#367
  def rewrite_dur(t); end

  # source://fugit//lib/fugit/duration.rb#357
  def rewrite_sdur(t); end

  # source://fugit//lib/fugit/duration.rb#344
  def sdur(i); end

  # source://fugit//lib/fugit/duration.rb#338
  def sec(i); end

  # source://fugit//lib/fugit/duration.rb#339
  def sek(i); end

  # piece parsers bottom to top
  #
  # source://fugit//lib/fugit/duration.rb#329
  def sep(i); end

  # source://fugit//lib/fugit/duration.rb#342
  def sign(i); end

  # source://fugit//lib/fugit/duration.rb#333
  def wee(i); end

  # source://fugit//lib/fugit/duration.rb#331
  def yea(i); end
end

# Round float seconds to 9 decimals when deflating
#
# source://fugit//lib/fugit/duration.rb#161
Fugit::Duration::SECOND_ROUND = T.let(T.unsafe(nil), Integer)

# A natural language set of parsers for fugit.
# Focuses on cron expressions. The rest is better left to Chronic and friends.
#
# source://fugit//lib/fugit/nat.rb#8
module Fugit::Nat
  class << self
    # source://fugit//lib/fugit/nat.rb#42
    def do_parse(s, opts = T.unsafe(nil)); end

    # source://fugit//lib/fugit/nat.rb#14
    def parse(s, opts = T.unsafe(nil)); end
  end
end

# source://fugit//lib/fugit/nat.rb#10
Fugit::Nat::MAX_INPUT_LENGTH = T.let(T.unsafe(nil), Integer)

# source://fugit//lib/fugit/nat.rb#49
module Fugit::Nat::Parser
  include ::Raabro
  extend ::Raabro::ModuleMethods
  extend ::Raabro
  extend ::Fugit::Nat::Parser

  # source://fugit//lib/fugit/nat.rb#121
  def _and(i); end

  # source://fugit//lib/fugit/nat.rb#122
  def _and_or_or(i); end

  # source://fugit//lib/fugit/nat.rb#125
  def _and_or_or_or_comma(i); end

  # source://fugit//lib/fugit/nat.rb#117
  def _at(i); end

  # source://fugit//lib/fugit/nat.rb#131
  def _day_s(i); end

  # source://fugit//lib/fugit/nat.rb#158
  def _dmin(i); end

  # parsers bottom to top #################################################
  #
  # source://fugit//lib/fugit/nat.rb#115
  def _every(i); end

  # source://fugit//lib/fugit/nat.rb#116
  def _from(i); end

  # source://fugit//lib/fugit/nat.rb#123
  def _in_or_on(i); end

  # source://fugit//lib/fugit/nat.rb#156
  def _minute(i); end

  # source://fugit//lib/fugit/nat.rb#118
  def _on(i); end

  # source://fugit//lib/fugit/nat.rb#247
  def _point(i); end

  # source://fugit//lib/fugit/nat.rb#373
  def _rewrite_sub(t, key = T.unsafe(nil)); end

  # source://fugit//lib/fugit/nat.rb#370
  def _rewrite_subs(t, key = T.unsafe(nil)); end

  # source://fugit//lib/fugit/nat.rb#135
  def _sep(i); end

  # source://fugit//lib/fugit/nat.rb#134
  def _space(i); end

  # source://fugit//lib/fugit/nat.rb#132
  def _the(i); end

  # source://fugit//lib/fugit/nat.rb#119
  def _to(i); end

  # source://fugit//lib/fugit/nat.rb#128
  def _to_or_dash(i); end

  # Try to follow https://en.wikipedia.org/wiki/12-hour_clock#Confusion_at_noon_and_midnight
  #
  # source://fugit//lib/fugit/nat.rb#498
  def adjust_h(h, m, ap); end

  # source://fugit//lib/fugit/nat.rb#212
  def ampm(i); end

  # source://fugit//lib/fugit/nat.rb#161
  def and_dmin(i); end

  # source://fugit//lib/fugit/nat.rb#273
  def at(i); end

  # at five
  # at five pm
  # at five o'clock
  # at 16:30
  # at noon
  # at 18:00 UTC <-- ...tz
  #
  # source://fugit//lib/fugit/nat.rb#266
  def at_object(i); end

  # source://fugit//lib/fugit/nat.rb#269
  def at_objects(i); end

  # source://fugit//lib/fugit/nat.rb#253
  def at_p(i); end

  # source://fugit//lib/fugit/nat.rb#256
  def at_point(i); end

  # source://fugit//lib/fugit/nat.rb#196
  def city_tz(i); end

  # source://fugit//lib/fugit/nat.rb#137
  def count(i); end

  # source://fugit//lib/fugit/nat.rb#249
  def counts(i); end

  # source://fugit//lib/fugit/nat.rb#215
  def dark(i); end

  # source://fugit//lib/fugit/nat.rb#202
  def delta_tz(i); end

  # source://fugit//lib/fugit/nat.rb#219
  def digital_h(i); end

  # source://fugit//lib/fugit/nat.rb#222
  def digital_hour(i); end

  # source://fugit//lib/fugit/nat.rb#352
  def every(i); end

  # every day
  # every 1 minute
  #
  # source://fugit//lib/fugit/nat.rb#283
  def every_interval(i); end

  # source://fugit//lib/fugit/nat.rb#338
  def every_named(i); end

  # source://fugit//lib/fugit/nat.rb#342
  def every_object(i); end

  # source://fugit//lib/fugit/nat.rb#348
  def every_objects(i); end

  # every 1st of the month
  # every first of the month
  # Every 2nd of the month
  # Every second of the month
  # every 15th of the month
  #
  # source://fugit//lib/fugit/nat.rb#334
  def every_of_the_month(i); end

  # source://fugit//lib/fugit/nat.rb#287
  def every_single_interval(i); end

  # every monday
  # every Fri-Sun
  # every Monday and Tuesday
  #
  # source://fugit//lib/fugit/nat.rb#321
  def every_weekday(i); end

  # source://fugit//lib/fugit/nat.rb#314
  def from(i); end

  # source://fugit//lib/fugit/nat.rb#308
  def from_object(i); end

  # source://fugit//lib/fugit/nat.rb#311
  def from_objects(i); end

  # source://fugit//lib/fugit/nat.rb#277
  def interval(i); end

  # source://fugit//lib/fugit/nat.rb#142
  def monthday(i); end

  # source://fugit//lib/fugit/nat.rb#150
  def monthdays(i); end

  # source://fugit//lib/fugit/nat.rb#240
  def named_h(i); end

  # source://fugit//lib/fugit/nat.rb#243
  def named_hour(i); end

  # source://fugit//lib/fugit/nat.rb#233
  def named_m(i); end

  # source://fugit//lib/fugit/nat.rb#236
  def named_min(i); end

  # source://fugit//lib/fugit/nat.rb#199
  def named_tz(i); end

  # source://fugit//lib/fugit/nat.rb#359
  def nat(i); end

  # source://fugit//lib/fugit/nat.rb#356
  def nat_elt(i); end

  # source://fugit//lib/fugit/nat.rb#139
  def omonthday(i); end

  # source://fugit//lib/fugit/nat.rb#149
  def omonthdays(i); end

  # 'every month on day 2 at 10:00' => '0 10 2 * *',
  # 'every month on day 2 and 5 at 10:00' => '0 10 2,5 * *',
  # 'every month on days 1,15 at 10:00' => '0 10 1,15 * *',
  #
  # 'every week on monday 18:23' => '23 18 * * 1',
  #
  # every month on the 1st
  #
  # source://fugit//lib/fugit/nat.rb#192
  def on(i); end

  # source://fugit//lib/fugit/nat.rb#174
  def on_days(i); end

  # source://fugit//lib/fugit/nat.rb#165
  def on_minutes(i); end

  # source://fugit//lib/fugit/nat.rb#177
  def on_object(i); end

  # source://fugit//lib/fugit/nat.rb#180
  def on_objects(i); end

  # source://fugit//lib/fugit/nat.rb#154
  def on_the(i); end

  # source://fugit//lib/fugit/nat.rb#173
  def on_thes(i); end

  # source://fugit//lib/fugit/nat.rb#169
  def on_thex(i); end

  # source://fugit//lib/fugit/nat.rb#175
  def on_weekdays(i); end

  # source://fugit//lib/fugit/nat.rb#325
  def otm(i); end

  # source://fugit//lib/fugit/nat.rb#554
  def rewrite_at(t); end

  # source://fugit//lib/fugit/nat.rb#417
  def rewrite_at_p(t); end

  # source://fugit//lib/fugit/nat.rb#511
  def rewrite_digital_hour(t); end

  # source://fugit//lib/fugit/nat.rb#378
  def rewrite_dmin(t); end

  # source://fugit//lib/fugit/nat.rb#558
  def rewrite_every(t); end

  # source://fugit//lib/fugit/nat.rb#438
  def rewrite_every_interval(t); end

  # source://fugit//lib/fugit/nat.rb#458
  def rewrite_every_named(t); end

  # source://fugit//lib/fugit/nat.rb#430
  def rewrite_every_single_interval(t); end

  # source://fugit//lib/fugit/nat.rb#409
  def rewrite_monthday(t); end

  # source://fugit//lib/fugit/nat.rb#528
  def rewrite_named_hour(t); end

  # source://fugit//lib/fugit/nat.rb#562
  def rewrite_nat(t); end

  # source://fugit//lib/fugit/nat.rb#413
  def rewrite_omonthday(t); end

  # source://fugit//lib/fugit/nat.rb#405
  def rewrite_on(t); end

  # source://fugit//lib/fugit/nat.rb#401
  def rewrite_on_days(t); end

  # source://fugit//lib/fugit/nat.rb#382
  def rewrite_on_minutes(t); end

  # source://fugit//lib/fugit/nat.rb#398
  def rewrite_on_thes(t); end

  # source://fugit//lib/fugit/nat.rb#389
  def rewrite_on_thex(t); end

  # source://fugit//lib/fugit/nat.rb#477
  def rewrite_on_weekdays(t); end

  # source://fugit//lib/fugit/nat.rb#520
  def rewrite_simple_hour(t); end

  # source://fugit//lib/fugit/nat.rb#544
  def rewrite_to_hour(t); end

  # source://fugit//lib/fugit/nat.rb#491
  def rewrite_to_omonthday(t); end

  # source://fugit//lib/fugit/nat.rb#484
  def rewrite_to_weekday(t); end

  # source://fugit//lib/fugit/nat.rb#467
  def rewrite_tz(t); end

  # source://fugit//lib/fugit/nat.rb#472
  def rewrite_weekday(t); end

  # source://fugit//lib/fugit/nat.rb#477
  def rewrite_weekdays(t); end

  # source://fugit//lib/fugit/nat.rb#226
  def simple_h(i); end

  # source://fugit//lib/fugit/nat.rb#229
  def simple_hour(i); end

  # rewrite parsed tree ###################################################
  #
  # source://fugit//lib/fugit/nat.rb#366
  def slot(key, data0, data1 = T.unsafe(nil), opts = T.unsafe(nil)); end

  # source://fugit//lib/fugit/nat.rb#304
  def to_hour(i); end

  # source://fugit//lib/fugit/nat.rb#299
  def to_omonthday(i); end

  # source://fugit//lib/fugit/nat.rb#291
  def to_weekday(i); end

  # source://fugit//lib/fugit/nat.rb#205
  def tz(i); end

  # source://fugit//lib/fugit/nat.rb#208
  def tzone(i); end

  # source://fugit//lib/fugit/nat.rb#145
  def weekday(i); end

  # source://fugit//lib/fugit/nat.rb#295
  def weekday_range(i); end

  # source://fugit//lib/fugit/nat.rb#152
  def weekdays(i); end
end

# source://fugit//lib/fugit/nat.rb#83
Fugit::Nat::Parser::INTERVALS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/nat.rb#110
Fugit::Nat::Parser::INTERVAL_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/nat.rb#104
Fugit::Nat::Parser::MONTHDAY_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/nat.rb#108
Fugit::Nat::Parser::NAMED_H_REX = T.let(T.unsafe(nil), Regexp)

# prevent "mon" from eating "monday"
#
# source://fugit//lib/fugit/nat.rb#107
Fugit::Nat::Parser::NAMED_M_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/nat.rb#63
Fugit::Nat::Parser::NHOURS = T.let(T.unsafe(nil), Hash)

# source://fugit//lib/fugit/nat.rb#69
Fugit::Nat::Parser::NMINUTES = T.let(T.unsafe(nil), Hash)

# source://fugit//lib/fugit/nat.rb#101
Fugit::Nat::Parser::OMONTHDAYS = T.let(T.unsafe(nil), Hash)

# source://fugit//lib/fugit/nat.rb#103
Fugit::Nat::Parser::OMONTHDAY_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/nat.rb#80
Fugit::Nat::Parser::POINTS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/nat.rb#109
Fugit::Nat::Parser::POINT_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/nat.rb#76
Fugit::Nat::Parser::WEEKDAYS = T.let(T.unsafe(nil), Array)

# source://fugit//lib/fugit/nat.rb#105
Fugit::Nat::Parser::WEEKDAY_REX = T.let(T.unsafe(nil), Regexp)

# source://fugit//lib/fugit/nat.rb#568
class Fugit::Nat::Slot
  # @return [Slot] a new instance of Slot
  #
  # source://fugit//lib/fugit/nat.rb#571
  def initialize(key, d0, d1 = T.unsafe(nil), opts = T.unsafe(nil)); end

  # Returns the value of attribute _data0.
  #
  # source://fugit//lib/fugit/nat.rb#570
  def _data0; end

  # Sets the attribute _data0
  #
  # @param value the value to set the attribute _data0 to.
  #
  # source://fugit//lib/fugit/nat.rb#570
  def _data0=(_arg0); end

  # Returns the value of attribute _data1.
  #
  # source://fugit//lib/fugit/nat.rb#570
  def _data1; end

  # Sets the attribute _data1
  #
  # @param value the value to set the attribute _data1 to.
  #
  # source://fugit//lib/fugit/nat.rb#570
  def _data1=(_arg0); end

  # source://fugit//lib/fugit/nat.rb#592
  def a; end

  # source://fugit//lib/fugit/nat.rb#581
  def append(slot); end

  # source://fugit//lib/fugit/nat.rb#576
  def data0; end

  # source://fugit//lib/fugit/nat.rb#577
  def data1; end

  # @return [Boolean]
  #
  # source://fugit//lib/fugit/nat.rb#580
  def graded?; end

  # source://fugit//lib/fugit/nat.rb#586
  def inspect; end

  # Returns the value of attribute key.
  #
  # source://fugit//lib/fugit/nat.rb#569
  def key; end

  # source://fugit//lib/fugit/nat.rb#579
  def strong; end

  # source://fugit//lib/fugit/nat.rb#578
  def weak; end

  protected

  # source://fugit//lib/fugit/nat.rb#598
  def conflate(index, slot); end

  # source://fugit//lib/fugit/nat.rb#614
  def hour_range; end

  # source://fugit//lib/fugit/nat.rb#594
  def to_a(x); end
end

# source://fugit//lib/fugit/nat.rb#620
class Fugit::Nat::SlotGroup
  # @return [SlotGroup] a new instance of SlotGroup
  #
  # source://fugit//lib/fugit/nat.rb#622
  def initialize(slots); end

  # source://fugit//lib/fugit/nat.rb#647
  def to_crons(opts); end

  protected

  # source://fugit//lib/fugit/nat.rb#670
  def determine_hms; end

  # source://fugit//lib/fugit/nat.rb#665
  def make_slot(key, data0, data1 = T.unsafe(nil)); end

  # source://fugit//lib/fugit/nat.rb#693
  def parse_cron(hm, opts); end

  # Return nil if the cron is "not strict"
  #
  # For example, "0 0/17 * * *" (gh-86) is a perfectly valid
  # cron string, but makes not much sense when derived via `.parse_nat`
  # from "every 17 hours".
  #
  # It happens here because it's nat being strict, not cron.
  #
  # source://fugit//lib/fugit/nat.rb#730
  def restrict(a, cron); end

  # source://fugit//lib/fugit/nat.rb#741
  def slot(key, default); end
end

# source://fugit//lib/fugit.rb#6
Fugit::VERSION = T.let(T.unsafe(nil), String)

# source://fugit//lib/fugit/misc.rb#6
Fugit::YEAR_S = T.let(T.unsafe(nil), Integer)