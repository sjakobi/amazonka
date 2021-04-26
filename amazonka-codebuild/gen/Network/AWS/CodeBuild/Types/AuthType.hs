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
-- Module      : Network.AWS.CodeBuild.Types.AuthType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.AuthType
  ( AuthType
      ( ..,
        AuthTypeBASICAUTH,
        AuthTypeOAUTH,
        AuthTypePERSONALACCESSTOKEN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthType = AuthType'
  { fromAuthType ::
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

pattern AuthTypeBASICAUTH :: AuthType
pattern AuthTypeBASICAUTH = AuthType' "BASIC_AUTH"

pattern AuthTypeOAUTH :: AuthType
pattern AuthTypeOAUTH = AuthType' "OAUTH"

pattern AuthTypePERSONALACCESSTOKEN :: AuthType
pattern AuthTypePERSONALACCESSTOKEN = AuthType' "PERSONAL_ACCESS_TOKEN"

{-# COMPLETE
  AuthTypeBASICAUTH,
  AuthTypeOAUTH,
  AuthTypePERSONALACCESSTOKEN,
  AuthType'
  #-}

instance Prelude.FromText AuthType where
  parser = AuthType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthType where
  toText (AuthType' x) = x

instance Prelude.Hashable AuthType

instance Prelude.NFData AuthType

instance Prelude.ToByteString AuthType

instance Prelude.ToQuery AuthType

instance Prelude.ToHeader AuthType

instance Prelude.ToJSON AuthType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthType where
  parseJSON = Prelude.parseJSONText "AuthType"
