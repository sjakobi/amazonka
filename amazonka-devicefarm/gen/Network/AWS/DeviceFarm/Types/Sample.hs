{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Sample
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Sample where

import Network.AWS.DeviceFarm.Types.SampleType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a sample of performance data.
--
--
--
-- /See:/ 'sample' smart constructor.
data Sample = Sample'
  { _sArn :: !(Maybe Text),
    _sUrl :: !(Maybe Text),
    _sType :: !(Maybe SampleType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Sample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sArn' - The sample's ARN.
--
-- * 'sUrl' - The presigned Amazon S3 URL that can be used with a GET request to download the sample's file.
--
-- * 'sType' - The sample's type. Must be one of the following values:     * CPU: A CPU sample type. This is expressed as the app processing CPU time (including child processes) as reported by process, as a percentage.     * MEMORY: A memory usage sample type. This is expressed as the total proportional set size of an app process, in kilobytes.     * NATIVE_AVG_DRAWTIME     * NATIVE_FPS     * NATIVE_FRAMES     * NATIVE_MAX_DRAWTIME     * NATIVE_MIN_DRAWTIME     * OPENGL_AVG_DRAWTIME     * OPENGL_FPS     * OPENGL_FRAMES     * OPENGL_MAX_DRAWTIME     * OPENGL_MIN_DRAWTIME     * RX     * RX_RATE: The total number of bytes per second (TCP and UDP) that are sent, by app process.     * THREADS: A threads sample type. This is expressed as the total number of threads per app process.     * TX     * TX_RATE: The total number of bytes per second (TCP and UDP) that are received, by app process.
sample ::
  Sample
sample =
  Sample'
    { _sArn = Nothing,
      _sUrl = Nothing,
      _sType = Nothing
    }

-- | The sample's ARN.
sArn :: Lens' Sample (Maybe Text)
sArn = lens _sArn (\s a -> s {_sArn = a})

-- | The presigned Amazon S3 URL that can be used with a GET request to download the sample's file.
sUrl :: Lens' Sample (Maybe Text)
sUrl = lens _sUrl (\s a -> s {_sUrl = a})

-- | The sample's type. Must be one of the following values:     * CPU: A CPU sample type. This is expressed as the app processing CPU time (including child processes) as reported by process, as a percentage.     * MEMORY: A memory usage sample type. This is expressed as the total proportional set size of an app process, in kilobytes.     * NATIVE_AVG_DRAWTIME     * NATIVE_FPS     * NATIVE_FRAMES     * NATIVE_MAX_DRAWTIME     * NATIVE_MIN_DRAWTIME     * OPENGL_AVG_DRAWTIME     * OPENGL_FPS     * OPENGL_FRAMES     * OPENGL_MAX_DRAWTIME     * OPENGL_MIN_DRAWTIME     * RX     * RX_RATE: The total number of bytes per second (TCP and UDP) that are sent, by app process.     * THREADS: A threads sample type. This is expressed as the total number of threads per app process.     * TX     * TX_RATE: The total number of bytes per second (TCP and UDP) that are received, by app process.
sType :: Lens' Sample (Maybe SampleType)
sType = lens _sType (\s a -> s {_sType = a})

instance FromJSON Sample where
  parseJSON =
    withObject
      "Sample"
      ( \x ->
          Sample'
            <$> (x .:? "arn") <*> (x .:? "url") <*> (x .:? "type")
      )

instance Hashable Sample

instance NFData Sample
