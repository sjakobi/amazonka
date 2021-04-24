{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.S3Resource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.S3Resource where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Snowball.Types.KeyRange

-- | Each @S3Resource@ object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional @KeyRange@ value. The length of the range is defined at job creation, and has either an inclusive @BeginMarker@ , an inclusive @EndMarker@ , or both. Ranges are UTF-8 binary sorted.
--
--
--
-- /See:/ 's3Resource' smart constructor.
data S3Resource = S3Resource'
  { _srBucketARN ::
      !(Maybe Text),
    _srKeyRange :: !(Maybe KeyRange)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srBucketARN' - The Amazon Resource Name (ARN) of an Amazon S3 bucket.
--
-- * 'srKeyRange' - For export jobs, you can provide an optional @KeyRange@ within a specific Amazon S3 bucket. The length of the range is defined at job creation, and has either an inclusive @BeginMarker@ , an inclusive @EndMarker@ , or both. Ranges are UTF-8 binary sorted.
s3Resource ::
  S3Resource
s3Resource =
  S3Resource'
    { _srBucketARN = Nothing,
      _srKeyRange = Nothing
    }

-- | The Amazon Resource Name (ARN) of an Amazon S3 bucket.
srBucketARN :: Lens' S3Resource (Maybe Text)
srBucketARN = lens _srBucketARN (\s a -> s {_srBucketARN = a})

-- | For export jobs, you can provide an optional @KeyRange@ within a specific Amazon S3 bucket. The length of the range is defined at job creation, and has either an inclusive @BeginMarker@ , an inclusive @EndMarker@ , or both. Ranges are UTF-8 binary sorted.
srKeyRange :: Lens' S3Resource (Maybe KeyRange)
srKeyRange = lens _srKeyRange (\s a -> s {_srKeyRange = a})

instance FromJSON S3Resource where
  parseJSON =
    withObject
      "S3Resource"
      ( \x ->
          S3Resource'
            <$> (x .:? "BucketArn") <*> (x .:? "KeyRange")
      )

instance Hashable S3Resource

instance NFData S3Resource

instance ToJSON S3Resource where
  toJSON S3Resource' {..} =
    object
      ( catMaybes
          [ ("BucketArn" .=) <$> _srBucketARN,
            ("KeyRange" .=) <$> _srKeyRange
          ]
      )
