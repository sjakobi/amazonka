{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.ImageConfigResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.ImageConfigResponse where

import Network.AWS.Lambda.Types.ImageConfig
import Network.AWS.Lambda.Types.ImageConfigError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Response to GetFunctionConfiguration request.
--
--
--
-- /See:/ 'imageConfigResponse' smart constructor.
data ImageConfigResponse = ImageConfigResponse'
  { _icrImageConfig ::
      !(Maybe ImageConfig),
    _icrError ::
      !(Maybe ImageConfigError)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icrImageConfig' - Configuration values that override the container image Dockerfile.
--
-- * 'icrError' - Error response to GetFunctionConfiguration.
imageConfigResponse ::
  ImageConfigResponse
imageConfigResponse =
  ImageConfigResponse'
    { _icrImageConfig = Nothing,
      _icrError = Nothing
    }

-- | Configuration values that override the container image Dockerfile.
icrImageConfig :: Lens' ImageConfigResponse (Maybe ImageConfig)
icrImageConfig = lens _icrImageConfig (\s a -> s {_icrImageConfig = a})

-- | Error response to GetFunctionConfiguration.
icrError :: Lens' ImageConfigResponse (Maybe ImageConfigError)
icrError = lens _icrError (\s a -> s {_icrError = a})

instance FromJSON ImageConfigResponse where
  parseJSON =
    withObject
      "ImageConfigResponse"
      ( \x ->
          ImageConfigResponse'
            <$> (x .:? "ImageConfig") <*> (x .:? "Error")
      )

instance Hashable ImageConfigResponse

instance NFData ImageConfigResponse
