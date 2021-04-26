{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.AuthorizerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.AuthorizerType
  ( AuthorizerType
      ( ..,
        AuthorizerTypeCOGNITOUSERPOOLS,
        AuthorizerTypeREQUEST,
        AuthorizerTypeTOKEN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The authorizer type. Valid values are @TOKEN@ for a Lambda function
-- using a single authorization token submitted in a custom header,
-- @REQUEST@ for a Lambda function using incoming request parameters, and
-- @COGNITO_USER_POOLS@ for using an Amazon Cognito user pool.
newtype AuthorizerType = AuthorizerType'
  { fromAuthorizerType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AuthorizerTypeCOGNITOUSERPOOLS :: AuthorizerType
pattern AuthorizerTypeCOGNITOUSERPOOLS = AuthorizerType' "COGNITO_USER_POOLS"

pattern AuthorizerTypeREQUEST :: AuthorizerType
pattern AuthorizerTypeREQUEST = AuthorizerType' "REQUEST"

pattern AuthorizerTypeTOKEN :: AuthorizerType
pattern AuthorizerTypeTOKEN = AuthorizerType' "TOKEN"

{-# COMPLETE
  AuthorizerTypeCOGNITOUSERPOOLS,
  AuthorizerTypeREQUEST,
  AuthorizerTypeTOKEN,
  AuthorizerType'
  #-}

instance Prelude.FromText AuthorizerType where
  parser = AuthorizerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthorizerType where
  toText (AuthorizerType' x) = x

instance Prelude.Hashable AuthorizerType

instance Prelude.NFData AuthorizerType

instance Prelude.ToByteString AuthorizerType

instance Prelude.ToQuery AuthorizerType

instance Prelude.ToHeader AuthorizerType

instance Prelude.ToJSON AuthorizerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthorizerType where
  parseJSON = Prelude.parseJSONText "AuthorizerType"
