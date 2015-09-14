module RubySMB
  module SMB1
    module BitField
      # The Flags bit-field for an SMB1 Header as defined in
      # [2.2.3.1 SMB Header Extensions](https://msdn.microsoft.com/en-us/library/cc246254.aspx)
      class HeaderFlags < BinData::Record
        endian  :little
        bit1    :reply,                 :label => 'Response Packet?'
        bit1    :opbatch,               :label => 'Batch OpLock',               :value => 0
        bit1    :oplock,                :label => 'Exclusive Oplock',           :value => 0
        bit1    :canonicalized_paths,   :label => 'Canonicalized Pathnames',    :value => 1
        bit1    :case_insensitive,      :label => 'Pathnames Case Insensitive', :value => 1
        bit1    :reserved,              :label => 'Flags Reserved',             :value => 0
        bit1    :buf_avail,             :label => 'Receive Buffer Available',   :value => 0
        bit1    :lock_and_read_ok,      :label => 'Lock&Read Supported'
      end
    end
  end
end
