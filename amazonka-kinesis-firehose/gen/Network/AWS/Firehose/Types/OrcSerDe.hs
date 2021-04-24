{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.OrcSerDe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.OrcSerDe where

import Network.AWS.Firehose.Types.OrcCompression
import Network.AWS.Firehose.Types.OrcFormatVersion
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A serializer to use for converting data to the ORC format before storing it in Amazon S3. For more information, see <https://orc.apache.org/docs/ Apache ORC> .
--
--
--
-- /See:/ 'orcSerDe' smart constructor.
data OrcSerDe = OrcSerDe'
  { _osdRowIndexStride ::
      !(Maybe Nat),
    _osdCompression :: !(Maybe OrcCompression),
    _osdDictionaryKeyThreshold :: !(Maybe Double),
    _osdBlockSizeBytes :: !(Maybe Nat),
    _osdFormatVersion :: !(Maybe OrcFormatVersion),
    _osdBloomFilterColumns :: !(Maybe [Text]),
    _osdEnablePadding :: !(Maybe Bool),
    _osdBloomFilterFalsePositiveProbability ::
      !(Maybe Double),
    _osdPaddingTolerance :: !(Maybe Double),
    _osdStripeSizeBytes :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrcSerDe' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osdRowIndexStride' - The number of rows between index entries. The default is 10,000 and the minimum is 1,000.
--
-- * 'osdCompression' - The compression code to use over data blocks. The default is @SNAPPY@ .
--
-- * 'osdDictionaryKeyThreshold' - Represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to 1.
--
-- * 'osdBlockSizeBytes' - The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
--
-- * 'osdFormatVersion' - The version of the file to write. The possible values are @V0_11@ and @V0_12@ . The default is @V0_12@ .
--
-- * 'osdBloomFilterColumns' - The column names for which you want Kinesis Data Firehose to create bloom filters. The default is @null@ .
--
-- * 'osdEnablePadding' - Set this to @true@ to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is @false@ .
--
-- * 'osdBloomFilterFalsePositiveProbability' - The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.
--
-- * 'osdPaddingTolerance' - A number between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is 0.05, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when 'OrcSerDe$EnablePadding' is @false@ .
--
-- * 'osdStripeSizeBytes' - The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.
orcSerDe ::
  OrcSerDe
orcSerDe =
  OrcSerDe'
    { _osdRowIndexStride = Nothing,
      _osdCompression = Nothing,
      _osdDictionaryKeyThreshold = Nothing,
      _osdBlockSizeBytes = Nothing,
      _osdFormatVersion = Nothing,
      _osdBloomFilterColumns = Nothing,
      _osdEnablePadding = Nothing,
      _osdBloomFilterFalsePositiveProbability = Nothing,
      _osdPaddingTolerance = Nothing,
      _osdStripeSizeBytes = Nothing
    }

-- | The number of rows between index entries. The default is 10,000 and the minimum is 1,000.
osdRowIndexStride :: Lens' OrcSerDe (Maybe Natural)
osdRowIndexStride = lens _osdRowIndexStride (\s a -> s {_osdRowIndexStride = a}) . mapping _Nat

-- | The compression code to use over data blocks. The default is @SNAPPY@ .
osdCompression :: Lens' OrcSerDe (Maybe OrcCompression)
osdCompression = lens _osdCompression (\s a -> s {_osdCompression = a})

-- | Represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to 1.
osdDictionaryKeyThreshold :: Lens' OrcSerDe (Maybe Double)
osdDictionaryKeyThreshold = lens _osdDictionaryKeyThreshold (\s a -> s {_osdDictionaryKeyThreshold = a})

-- | The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations.
osdBlockSizeBytes :: Lens' OrcSerDe (Maybe Natural)
osdBlockSizeBytes = lens _osdBlockSizeBytes (\s a -> s {_osdBlockSizeBytes = a}) . mapping _Nat

-- | The version of the file to write. The possible values are @V0_11@ and @V0_12@ . The default is @V0_12@ .
osdFormatVersion :: Lens' OrcSerDe (Maybe OrcFormatVersion)
osdFormatVersion = lens _osdFormatVersion (\s a -> s {_osdFormatVersion = a})

-- | The column names for which you want Kinesis Data Firehose to create bloom filters. The default is @null@ .
osdBloomFilterColumns :: Lens' OrcSerDe [Text]
osdBloomFilterColumns = lens _osdBloomFilterColumns (\s a -> s {_osdBloomFilterColumns = a}) . _Default . _Coerce

-- | Set this to @true@ to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is @false@ .
osdEnablePadding :: Lens' OrcSerDe (Maybe Bool)
osdEnablePadding = lens _osdEnablePadding (\s a -> s {_osdEnablePadding = a})

-- | The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1.
osdBloomFilterFalsePositiveProbability :: Lens' OrcSerDe (Maybe Double)
osdBloomFilterFalsePositiveProbability = lens _osdBloomFilterFalsePositiveProbability (\s a -> s {_osdBloomFilterFalsePositiveProbability = a})

-- | A number between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is 0.05, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when 'OrcSerDe$EnablePadding' is @false@ .
osdPaddingTolerance :: Lens' OrcSerDe (Maybe Double)
osdPaddingTolerance = lens _osdPaddingTolerance (\s a -> s {_osdPaddingTolerance = a})

-- | The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.
osdStripeSizeBytes :: Lens' OrcSerDe (Maybe Natural)
osdStripeSizeBytes = lens _osdStripeSizeBytes (\s a -> s {_osdStripeSizeBytes = a}) . mapping _Nat

instance FromJSON OrcSerDe where
  parseJSON =
    withObject
      "OrcSerDe"
      ( \x ->
          OrcSerDe'
            <$> (x .:? "RowIndexStride")
            <*> (x .:? "Compression")
            <*> (x .:? "DictionaryKeyThreshold")
            <*> (x .:? "BlockSizeBytes")
            <*> (x .:? "FormatVersion")
            <*> (x .:? "BloomFilterColumns" .!= mempty)
            <*> (x .:? "EnablePadding")
            <*> (x .:? "BloomFilterFalsePositiveProbability")
            <*> (x .:? "PaddingTolerance")
            <*> (x .:? "StripeSizeBytes")
      )

instance Hashable OrcSerDe

instance NFData OrcSerDe

instance ToJSON OrcSerDe where
  toJSON OrcSerDe' {..} =
    object
      ( catMaybes
          [ ("RowIndexStride" .=) <$> _osdRowIndexStride,
            ("Compression" .=) <$> _osdCompression,
            ("DictionaryKeyThreshold" .=)
              <$> _osdDictionaryKeyThreshold,
            ("BlockSizeBytes" .=) <$> _osdBlockSizeBytes,
            ("FormatVersion" .=) <$> _osdFormatVersion,
            ("BloomFilterColumns" .=) <$> _osdBloomFilterColumns,
            ("EnablePadding" .=) <$> _osdEnablePadding,
            ("BloomFilterFalsePositiveProbability" .=)
              <$> _osdBloomFilterFalsePositiveProbability,
            ("PaddingTolerance" .=) <$> _osdPaddingTolerance,
            ("StripeSizeBytes" .=) <$> _osdStripeSizeBytes
          ]
      )
