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
-- Module      : Network.AWS.MediaConvert.GetPreset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the JSON for a specific preset.
module Network.AWS.MediaConvert.GetPreset
  ( -- * Creating a Request
    getPreset,
    GetPreset,

    -- * Request Lenses
    gpName,

    -- * Destructuring the Response
    getPresetResponse,
    GetPresetResponse,

    -- * Response Lenses
    gprrsPreset,
    gprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPreset' smart constructor.
newtype GetPreset = GetPreset' {_gpName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPreset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpName' - The name of the preset.
getPreset ::
  -- | 'gpName'
  Text ->
  GetPreset
getPreset pName_ = GetPreset' {_gpName = pName_}

-- | The name of the preset.
gpName :: Lens' GetPreset Text
gpName = lens _gpName (\s a -> s {_gpName = a})

instance AWSRequest GetPreset where
  type Rs GetPreset = GetPresetResponse
  request = get mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          GetPresetResponse'
            <$> (x .?> "preset") <*> (pure (fromEnum s))
      )

instance Hashable GetPreset

instance NFData GetPreset

instance ToHeaders GetPreset where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetPreset where
  toPath GetPreset' {..} =
    mconcat ["/2017-08-29/presets/", toBS _gpName]

instance ToQuery GetPreset where
  toQuery = const mempty

-- | /See:/ 'getPresetResponse' smart constructor.
data GetPresetResponse = GetPresetResponse'
  { _gprrsPreset ::
      !(Maybe Preset),
    _gprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPresetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gprrsPreset' - A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
--
-- * 'gprrsResponseStatus' - -- | The response status code.
getPresetResponse ::
  -- | 'gprrsResponseStatus'
  Int ->
  GetPresetResponse
getPresetResponse pResponseStatus_ =
  GetPresetResponse'
    { _gprrsPreset = Nothing,
      _gprrsResponseStatus = pResponseStatus_
    }

-- | A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
gprrsPreset :: Lens' GetPresetResponse (Maybe Preset)
gprrsPreset = lens _gprrsPreset (\s a -> s {_gprrsPreset = a})

-- | -- | The response status code.
gprrsResponseStatus :: Lens' GetPresetResponse Int
gprrsResponseStatus = lens _gprrsResponseStatus (\s a -> s {_gprrsResponseStatus = a})

instance NFData GetPresetResponse
