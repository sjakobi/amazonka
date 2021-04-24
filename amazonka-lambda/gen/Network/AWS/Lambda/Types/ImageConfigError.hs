{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.ImageConfigError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.ImageConfigError where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Error response to GetFunctionConfiguration.
--
--
--
-- /See:/ 'imageConfigError' smart constructor.
data ImageConfigError = ImageConfigError'
  { _iceMessage ::
      !(Maybe (Sensitive Text)),
    _iceErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageConfigError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iceMessage' - Error message.
--
-- * 'iceErrorCode' - Error code.
imageConfigError ::
  ImageConfigError
imageConfigError =
  ImageConfigError'
    { _iceMessage = Nothing,
      _iceErrorCode = Nothing
    }

-- | Error message.
iceMessage :: Lens' ImageConfigError (Maybe Text)
iceMessage = lens _iceMessage (\s a -> s {_iceMessage = a}) . mapping _Sensitive

-- | Error code.
iceErrorCode :: Lens' ImageConfigError (Maybe Text)
iceErrorCode = lens _iceErrorCode (\s a -> s {_iceErrorCode = a})

instance FromJSON ImageConfigError where
  parseJSON =
    withObject
      "ImageConfigError"
      ( \x ->
          ImageConfigError'
            <$> (x .:? "Message") <*> (x .:? "ErrorCode")
      )

instance Hashable ImageConfigError

instance NFData ImageConfigError
