{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.OutputGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.OutputGroup where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.AutomatedEncodingSettings
import Network.AWS.MediaConvert.Types.Output
import Network.AWS.MediaConvert.Types.OutputGroupSettings
import Network.AWS.Prelude

-- | Group of outputs
--
-- /See:/ 'outputGroup' smart constructor.
data OutputGroup = OutputGroup'
  { _ogOutputs ::
      !(Maybe [Output]),
    _ogAutomatedEncodingSettings ::
      !(Maybe AutomatedEncodingSettings),
    _ogOutputGroupSettings ::
      !(Maybe OutputGroupSettings),
    _ogName :: !(Maybe Text),
    _ogCustomName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutputGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogOutputs' - This object holds groups of encoding settings, one group of settings per output.
--
-- * 'ogAutomatedEncodingSettings' - Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video.
--
-- * 'ogOutputGroupSettings' - Output Group settings, including type
--
-- * 'ogName' - Name of the output group
--
-- * 'ogCustomName' - Use Custom Group Name (CustomName) to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores.
outputGroup ::
  OutputGroup
outputGroup =
  OutputGroup'
    { _ogOutputs = Nothing,
      _ogAutomatedEncodingSettings = Nothing,
      _ogOutputGroupSettings = Nothing,
      _ogName = Nothing,
      _ogCustomName = Nothing
    }

-- | This object holds groups of encoding settings, one group of settings per output.
ogOutputs :: Lens' OutputGroup [Output]
ogOutputs = lens _ogOutputs (\s a -> s {_ogOutputs = a}) . _Default . _Coerce

-- | Use automated encoding to have MediaConvert choose your encoding settings for you, based on characteristics of your input video.
ogAutomatedEncodingSettings :: Lens' OutputGroup (Maybe AutomatedEncodingSettings)
ogAutomatedEncodingSettings = lens _ogAutomatedEncodingSettings (\s a -> s {_ogAutomatedEncodingSettings = a})

-- | Output Group settings, including type
ogOutputGroupSettings :: Lens' OutputGroup (Maybe OutputGroupSettings)
ogOutputGroupSettings = lens _ogOutputGroupSettings (\s a -> s {_ogOutputGroupSettings = a})

-- | Name of the output group
ogName :: Lens' OutputGroup (Maybe Text)
ogName = lens _ogName (\s a -> s {_ogName = a})

-- | Use Custom Group Name (CustomName) to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores.
ogCustomName :: Lens' OutputGroup (Maybe Text)
ogCustomName = lens _ogCustomName (\s a -> s {_ogCustomName = a})

instance FromJSON OutputGroup where
  parseJSON =
    withObject
      "OutputGroup"
      ( \x ->
          OutputGroup'
            <$> (x .:? "outputs" .!= mempty)
            <*> (x .:? "automatedEncodingSettings")
            <*> (x .:? "outputGroupSettings")
            <*> (x .:? "name")
            <*> (x .:? "customName")
      )

instance Hashable OutputGroup

instance NFData OutputGroup

instance ToJSON OutputGroup where
  toJSON OutputGroup' {..} =
    object
      ( catMaybes
          [ ("outputs" .=) <$> _ogOutputs,
            ("automatedEncodingSettings" .=)
              <$> _ogAutomatedEncodingSettings,
            ("outputGroupSettings" .=)
              <$> _ogOutputGroupSettings,
            ("name" .=) <$> _ogName,
            ("customName" .=) <$> _ogCustomName
          ]
      )
