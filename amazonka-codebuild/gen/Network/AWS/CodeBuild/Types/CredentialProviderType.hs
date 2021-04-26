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
-- Module      : Network.AWS.CodeBuild.Types.CredentialProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CredentialProviderType
  ( CredentialProviderType
      ( ..,
        CredentialProviderTypeSECRETSMANAGER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CredentialProviderType = CredentialProviderType'
  { fromCredentialProviderType ::
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

pattern CredentialProviderTypeSECRETSMANAGER :: CredentialProviderType
pattern CredentialProviderTypeSECRETSMANAGER = CredentialProviderType' "SECRETS_MANAGER"

{-# COMPLETE
  CredentialProviderTypeSECRETSMANAGER,
  CredentialProviderType'
  #-}

instance Prelude.FromText CredentialProviderType where
  parser = CredentialProviderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CredentialProviderType where
  toText (CredentialProviderType' x) = x

instance Prelude.Hashable CredentialProviderType

instance Prelude.NFData CredentialProviderType

instance Prelude.ToByteString CredentialProviderType

instance Prelude.ToQuery CredentialProviderType

instance Prelude.ToHeader CredentialProviderType

instance Prelude.ToJSON CredentialProviderType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CredentialProviderType where
  parseJSON = Prelude.parseJSONText "CredentialProviderType"
