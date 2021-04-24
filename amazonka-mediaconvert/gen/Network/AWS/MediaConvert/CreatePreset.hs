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
-- Module      : Network.AWS.MediaConvert.CreatePreset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
module Network.AWS.MediaConvert.CreatePreset
  ( -- * Creating a Request
    createPreset,
    CreatePreset,

    -- * Request Lenses
    cpCategory,
    cpTags,
    cpDescription,
    cpSettings,
    cpName,

    -- * Destructuring the Response
    createPresetResponse,
    CreatePresetResponse,

    -- * Response Lenses
    cprrsPreset,
    cprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createPreset' smart constructor.
data CreatePreset = CreatePreset'
  { _cpCategory ::
      !(Maybe Text),
    _cpTags :: !(Maybe (Map Text Text)),
    _cpDescription :: !(Maybe Text),
    _cpSettings :: !PresetSettings,
    _cpName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePreset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpCategory' - Optional. A category for the preset you are creating.
--
-- * 'cpTags' - The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
--
-- * 'cpDescription' - Optional. A description of the preset you are creating.
--
-- * 'cpSettings' - Settings for preset
--
-- * 'cpName' - The name of the preset you are creating.
createPreset ::
  -- | 'cpSettings'
  PresetSettings ->
  -- | 'cpName'
  Text ->
  CreatePreset
createPreset pSettings_ pName_ =
  CreatePreset'
    { _cpCategory = Nothing,
      _cpTags = Nothing,
      _cpDescription = Nothing,
      _cpSettings = pSettings_,
      _cpName = pName_
    }

-- | Optional. A category for the preset you are creating.
cpCategory :: Lens' CreatePreset (Maybe Text)
cpCategory = lens _cpCategory (\s a -> s {_cpCategory = a})

-- | The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
cpTags :: Lens' CreatePreset (HashMap Text Text)
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . _Default . _Map

-- | Optional. A description of the preset you are creating.
cpDescription :: Lens' CreatePreset (Maybe Text)
cpDescription = lens _cpDescription (\s a -> s {_cpDescription = a})

-- | Settings for preset
cpSettings :: Lens' CreatePreset PresetSettings
cpSettings = lens _cpSettings (\s a -> s {_cpSettings = a})

-- | The name of the preset you are creating.
cpName :: Lens' CreatePreset Text
cpName = lens _cpName (\s a -> s {_cpName = a})

instance AWSRequest CreatePreset where
  type Rs CreatePreset = CreatePresetResponse
  request = postJSON mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          CreatePresetResponse'
            <$> (x .?> "preset") <*> (pure (fromEnum s))
      )

instance Hashable CreatePreset

instance NFData CreatePreset

instance ToHeaders CreatePreset where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePreset where
  toJSON CreatePreset' {..} =
    object
      ( catMaybes
          [ ("category" .=) <$> _cpCategory,
            ("tags" .=) <$> _cpTags,
            ("description" .=) <$> _cpDescription,
            Just ("settings" .= _cpSettings),
            Just ("name" .= _cpName)
          ]
      )

instance ToPath CreatePreset where
  toPath = const "/2017-08-29/presets"

instance ToQuery CreatePreset where
  toQuery = const mempty

-- | /See:/ 'createPresetResponse' smart constructor.
data CreatePresetResponse = CreatePresetResponse'
  { _cprrsPreset ::
      !(Maybe Preset),
    _cprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePresetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsPreset' - A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createPresetResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreatePresetResponse
createPresetResponse pResponseStatus_ =
  CreatePresetResponse'
    { _cprrsPreset = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
cprrsPreset :: Lens' CreatePresetResponse (Maybe Preset)
cprrsPreset = lens _cprrsPreset (\s a -> s {_cprrsPreset = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreatePresetResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreatePresetResponse
