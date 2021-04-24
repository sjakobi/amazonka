{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.S3Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.S3Location where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The Amazon S3 artifact location for an action's artifacts.
--
--
--
-- /See:/ 's3Location' smart constructor.
data S3Location = S3Location'
  { _slKey ::
      !(Maybe Text),
    _slBucket :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'S3Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slKey' - The artifact name.
--
-- * 'slBucket' - The Amazon S3 artifact bucket for an action's artifacts.
s3Location ::
  S3Location
s3Location =
  S3Location' {_slKey = Nothing, _slBucket = Nothing}

-- | The artifact name.
slKey :: Lens' S3Location (Maybe Text)
slKey = lens _slKey (\s a -> s {_slKey = a})

-- | The Amazon S3 artifact bucket for an action's artifacts.
slBucket :: Lens' S3Location (Maybe Text)
slBucket = lens _slBucket (\s a -> s {_slBucket = a})

instance FromJSON S3Location where
  parseJSON =
    withObject
      "S3Location"
      ( \x ->
          S3Location' <$> (x .:? "key") <*> (x .:? "bucket")
      )

instance Hashable S3Location

instance NFData S3Location
