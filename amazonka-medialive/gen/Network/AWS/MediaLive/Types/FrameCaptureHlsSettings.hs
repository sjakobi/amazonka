{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.FrameCaptureHlsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FrameCaptureHlsSettings where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Frame Capture Hls Settings
--
-- /See:/ 'frameCaptureHlsSettings' smart constructor.
data FrameCaptureHlsSettings = FrameCaptureHlsSettings'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FrameCaptureHlsSettings' with the minimum fields required to make a request.
frameCaptureHlsSettings ::
  FrameCaptureHlsSettings
frameCaptureHlsSettings = FrameCaptureHlsSettings'

instance FromJSON FrameCaptureHlsSettings where
  parseJSON =
    withObject
      "FrameCaptureHlsSettings"
      (\x -> pure FrameCaptureHlsSettings')

instance Hashable FrameCaptureHlsSettings

instance NFData FrameCaptureHlsSettings

instance ToJSON FrameCaptureHlsSettings where
  toJSON = const (Object mempty)
