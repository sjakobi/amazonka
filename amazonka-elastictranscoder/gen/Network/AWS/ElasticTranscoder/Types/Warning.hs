{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.Warning
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.Warning where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.
--
--
-- Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.
--
--
-- /See:/ 'warning' smart constructor.
data Warning = Warning'
  { _wMessage :: !(Maybe Text),
    _wCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Warning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wMessage' - The message explaining what resources are in a different region from the pipeline.
--
-- * 'wCode' - The code of the cross-regional warning.
warning ::
  Warning
warning =
  Warning' {_wMessage = Nothing, _wCode = Nothing}

-- | The message explaining what resources are in a different region from the pipeline.
wMessage :: Lens' Warning (Maybe Text)
wMessage = lens _wMessage (\s a -> s {_wMessage = a})

-- | The code of the cross-regional warning.
wCode :: Lens' Warning (Maybe Text)
wCode = lens _wCode (\s a -> s {_wCode = a})

instance FromJSON Warning where
  parseJSON =
    withObject
      "Warning"
      ( \x ->
          Warning' <$> (x .:? "Message") <*> (x .:? "Code")
      )

instance Hashable Warning

instance NFData Warning
