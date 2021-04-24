{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.EnvironmentResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EnvironmentResponse where

import Network.AWS.Lambda.Types.EnvironmentError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The results of an operation to update or read environment variables. If the operation is successful, the response contains the environment variables. If it failed, the response contains details about the error.
--
--
--
-- /See:/ 'environmentResponse' smart constructor.
data EnvironmentResponse = EnvironmentResponse'
  { _erVariables ::
      !( Maybe
           ( Sensitive
               ( Map
                   Text
                   (Sensitive Text)
               )
           )
       ),
    _erError ::
      !(Maybe EnvironmentError)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnvironmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erVariables' - Environment variable key-value pairs.
--
-- * 'erError' - Error messages for environment variables that couldn't be applied.
environmentResponse ::
  EnvironmentResponse
environmentResponse =
  EnvironmentResponse'
    { _erVariables = Nothing,
      _erError = Nothing
    }

-- | Environment variable key-value pairs.
erVariables :: Lens' EnvironmentResponse (Maybe (HashMap Text Text))
erVariables = lens _erVariables (\s a -> s {_erVariables = a}) . mapping (_Sensitive . _Map)

-- | Error messages for environment variables that couldn't be applied.
erError :: Lens' EnvironmentResponse (Maybe EnvironmentError)
erError = lens _erError (\s a -> s {_erError = a})

instance FromJSON EnvironmentResponse where
  parseJSON =
    withObject
      "EnvironmentResponse"
      ( \x ->
          EnvironmentResponse'
            <$> (x .:? "Variables" .!= mempty) <*> (x .:? "Error")
      )

instance Hashable EnvironmentResponse

instance NFData EnvironmentResponse
