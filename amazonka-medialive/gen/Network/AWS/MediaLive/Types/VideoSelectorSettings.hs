{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoSelectorSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoSelectorSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.VideoSelectorPid
import Network.AWS.MediaLive.Types.VideoSelectorProgramId
import Network.AWS.Prelude

-- | Video Selector Settings
--
-- /See:/ 'videoSelectorSettings' smart constructor.
data VideoSelectorSettings = VideoSelectorSettings'
  { _vssVideoSelectorPid ::
      !(Maybe VideoSelectorPid),
    _vssVideoSelectorProgramId ::
      !( Maybe
           VideoSelectorProgramId
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VideoSelectorSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vssVideoSelectorPid' - Undocumented member.
--
-- * 'vssVideoSelectorProgramId' - Undocumented member.
videoSelectorSettings ::
  VideoSelectorSettings
videoSelectorSettings =
  VideoSelectorSettings'
    { _vssVideoSelectorPid =
        Nothing,
      _vssVideoSelectorProgramId = Nothing
    }

-- | Undocumented member.
vssVideoSelectorPid :: Lens' VideoSelectorSettings (Maybe VideoSelectorPid)
vssVideoSelectorPid = lens _vssVideoSelectorPid (\s a -> s {_vssVideoSelectorPid = a})

-- | Undocumented member.
vssVideoSelectorProgramId :: Lens' VideoSelectorSettings (Maybe VideoSelectorProgramId)
vssVideoSelectorProgramId = lens _vssVideoSelectorProgramId (\s a -> s {_vssVideoSelectorProgramId = a})

instance FromJSON VideoSelectorSettings where
  parseJSON =
    withObject
      "VideoSelectorSettings"
      ( \x ->
          VideoSelectorSettings'
            <$> (x .:? "videoSelectorPid")
            <*> (x .:? "videoSelectorProgramId")
      )

instance Hashable VideoSelectorSettings

instance NFData VideoSelectorSettings

instance ToJSON VideoSelectorSettings where
  toJSON VideoSelectorSettings' {..} =
    object
      ( catMaybes
          [ ("videoSelectorPid" .=) <$> _vssVideoSelectorPid,
            ("videoSelectorProgramId" .=)
              <$> _vssVideoSelectorProgramId
          ]
      )
