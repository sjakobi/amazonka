{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.MethodSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.MethodSnapshot where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a summary of a 'Method' resource, given a particular date and time.
--
--
--
-- /See:/ 'methodSnapshot' smart constructor.
data MethodSnapshot = MethodSnapshot'
  { _msApiKeyRequired ::
      !(Maybe Bool),
    _msAuthorizationType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MethodSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msApiKeyRequired' - Specifies whether the method requires a valid 'ApiKey' .
--
-- * 'msAuthorizationType' - The method's authorization type. Valid values are @NONE@ for open access, @AWS_IAM@ for using AWS IAM permissions, @CUSTOM@ for using a custom authorizer, or @COGNITO_USER_POOLS@ for using a Cognito user pool.
methodSnapshot ::
  MethodSnapshot
methodSnapshot =
  MethodSnapshot'
    { _msApiKeyRequired = Nothing,
      _msAuthorizationType = Nothing
    }

-- | Specifies whether the method requires a valid 'ApiKey' .
msApiKeyRequired :: Lens' MethodSnapshot (Maybe Bool)
msApiKeyRequired = lens _msApiKeyRequired (\s a -> s {_msApiKeyRequired = a})

-- | The method's authorization type. Valid values are @NONE@ for open access, @AWS_IAM@ for using AWS IAM permissions, @CUSTOM@ for using a custom authorizer, or @COGNITO_USER_POOLS@ for using a Cognito user pool.
msAuthorizationType :: Lens' MethodSnapshot (Maybe Text)
msAuthorizationType = lens _msAuthorizationType (\s a -> s {_msAuthorizationType = a})

instance FromJSON MethodSnapshot where
  parseJSON =
    withObject
      "MethodSnapshot"
      ( \x ->
          MethodSnapshot'
            <$> (x .:? "apiKeyRequired")
            <*> (x .:? "authorizationType")
      )

instance Hashable MethodSnapshot

instance NFData MethodSnapshot
