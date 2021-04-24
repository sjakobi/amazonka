{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.UpdatePreset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify one of your existing presets.
module Network.AWS.MediaConvert.UpdatePreset
  ( -- * Creating a Request
    updatePreset,
    UpdatePreset,

    -- * Request Lenses
    upCategory,
    upDescription,
    upSettings,
    upName,

    -- * Destructuring the Response
    updatePresetResponse,
    UpdatePresetResponse,

    -- * Response Lenses
    uprrsPreset,
    uprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updatePreset' smart constructor.
data UpdatePreset = UpdatePreset'
  { _upCategory ::
      !(Maybe Text),
    _upDescription :: !(Maybe Text),
    _upSettings :: !(Maybe PresetSettings),
    _upName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePreset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upCategory' - The new category for the preset, if you are changing it.
--
-- * 'upDescription' - The new description for the preset, if you are changing it.
--
-- * 'upSettings' - Settings for preset
--
-- * 'upName' - The name of the preset you are modifying.
updatePreset ::
  -- | 'upName'
  Text ->
  UpdatePreset
updatePreset pName_ =
  UpdatePreset'
    { _upCategory = Nothing,
      _upDescription = Nothing,
      _upSettings = Nothing,
      _upName = pName_
    }

-- | The new category for the preset, if you are changing it.
upCategory :: Lens' UpdatePreset (Maybe Text)
upCategory = lens _upCategory (\s a -> s {_upCategory = a})

-- | The new description for the preset, if you are changing it.
upDescription :: Lens' UpdatePreset (Maybe Text)
upDescription = lens _upDescription (\s a -> s {_upDescription = a})

-- | Settings for preset
upSettings :: Lens' UpdatePreset (Maybe PresetSettings)
upSettings = lens _upSettings (\s a -> s {_upSettings = a})

-- | The name of the preset you are modifying.
upName :: Lens' UpdatePreset Text
upName = lens _upName (\s a -> s {_upName = a})

instance AWSRequest UpdatePreset where
  type Rs UpdatePreset = UpdatePresetResponse
  request = putJSON mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          UpdatePresetResponse'
            <$> (x .?> "preset") <*> (pure (fromEnum s))
      )

instance Hashable UpdatePreset

instance NFData UpdatePreset

instance ToHeaders UpdatePreset where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePreset where
  toJSON UpdatePreset' {..} =
    object
      ( catMaybes
          [ ("category" .=) <$> _upCategory,
            ("description" .=) <$> _upDescription,
            ("settings" .=) <$> _upSettings
          ]
      )

instance ToPath UpdatePreset where
  toPath UpdatePreset' {..} =
    mconcat ["/2017-08-29/presets/", toBS _upName]

instance ToQuery UpdatePreset where
  toQuery = const mempty

-- | /See:/ 'updatePresetResponse' smart constructor.
data UpdatePresetResponse = UpdatePresetResponse'
  { _uprrsPreset ::
      !(Maybe Preset),
    _uprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePresetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsPreset' - A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updatePresetResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdatePresetResponse
updatePresetResponse pResponseStatus_ =
  UpdatePresetResponse'
    { _uprrsPreset = Nothing,
      _uprrsResponseStatus = pResponseStatus_
    }

-- | A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
uprrsPreset :: Lens' UpdatePresetResponse (Maybe Preset)
uprrsPreset = lens _uprrsPreset (\s a -> s {_uprrsPreset = a})

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdatePresetResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdatePresetResponse
