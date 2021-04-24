{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ErrorInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ErrorInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Error information.
--
--
--
-- /See:/ 'errorInfo' smart constructor.
data ErrorInfo = ErrorInfo'
  { _eiMessage ::
      !(Maybe Text),
    _eiCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiMessage' - The error message.
--
-- * 'eiCode' - The error code.
errorInfo ::
  ErrorInfo
errorInfo =
  ErrorInfo' {_eiMessage = Nothing, _eiCode = Nothing}

-- | The error message.
eiMessage :: Lens' ErrorInfo (Maybe Text)
eiMessage = lens _eiMessage (\s a -> s {_eiMessage = a})

-- | The error code.
eiCode :: Lens' ErrorInfo (Maybe Text)
eiCode = lens _eiCode (\s a -> s {_eiCode = a})

instance FromJSON ErrorInfo where
  parseJSON =
    withObject
      "ErrorInfo"
      ( \x ->
          ErrorInfo' <$> (x .:? "message") <*> (x .:? "code")
      )

instance Hashable ErrorInfo

instance NFData ErrorInfo
