{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EnvironmentError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EnvironmentError where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Error messages for environment variables that couldn't be applied.
--
--
--
-- /See:/ 'environmentError' smart constructor.
data EnvironmentError = EnvironmentError'
  { _eeMessage ::
      !(Maybe (Sensitive Text)),
    _eeErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnvironmentError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeMessage' - The error message.
--
-- * 'eeErrorCode' - The error code.
environmentError ::
  EnvironmentError
environmentError =
  EnvironmentError'
    { _eeMessage = Nothing,
      _eeErrorCode = Nothing
    }

-- | The error message.
eeMessage :: Lens' EnvironmentError (Maybe Text)
eeMessage = lens _eeMessage (\s a -> s {_eeMessage = a}) . mapping _Sensitive

-- | The error code.
eeErrorCode :: Lens' EnvironmentError (Maybe Text)
eeErrorCode = lens _eeErrorCode (\s a -> s {_eeErrorCode = a})

instance FromJSON EnvironmentError where
  parseJSON =
    withObject
      "EnvironmentError"
      ( \x ->
          EnvironmentError'
            <$> (x .:? "Message") <*> (x .:? "ErrorCode")
      )

instance Hashable EnvironmentError

instance NFData EnvironmentError
