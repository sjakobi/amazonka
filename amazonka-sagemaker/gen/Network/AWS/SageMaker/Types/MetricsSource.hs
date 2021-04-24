{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MetricsSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MetricsSource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- |
--
--
--
-- /See:/ 'metricsSource' smart constructor.
data MetricsSource = MetricsSource'
  { _msContentDigest ::
      !(Maybe Text),
    _msContentType :: !Text,
    _msS3URI :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetricsSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msContentDigest' -
--
-- * 'msContentType' -
--
-- * 'msS3URI' -
metricsSource ::
  -- | 'msContentType'
  Text ->
  -- | 'msS3URI'
  Text ->
  MetricsSource
metricsSource pContentType_ pS3URI_ =
  MetricsSource'
    { _msContentDigest = Nothing,
      _msContentType = pContentType_,
      _msS3URI = pS3URI_
    }

-- |
msContentDigest :: Lens' MetricsSource (Maybe Text)
msContentDigest = lens _msContentDigest (\s a -> s {_msContentDigest = a})

-- |
msContentType :: Lens' MetricsSource Text
msContentType = lens _msContentType (\s a -> s {_msContentType = a})

-- |
msS3URI :: Lens' MetricsSource Text
msS3URI = lens _msS3URI (\s a -> s {_msS3URI = a})

instance FromJSON MetricsSource where
  parseJSON =
    withObject
      "MetricsSource"
      ( \x ->
          MetricsSource'
            <$> (x .:? "ContentDigest")
            <*> (x .: "ContentType")
            <*> (x .: "S3Uri")
      )

instance Hashable MetricsSource

instance NFData MetricsSource

instance ToJSON MetricsSource where
  toJSON MetricsSource' {..} =
    object
      ( catMaybes
          [ ("ContentDigest" .=) <$> _msContentDigest,
            Just ("ContentType" .= _msContentType),
            Just ("S3Uri" .= _msS3URI)
          ]
      )
