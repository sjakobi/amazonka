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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.VerifySoftwareTokenResponseType
  ( VerifySoftwareTokenResponseType
      ( ..,
        VerifySoftwareTokenResponseTypeERROR,
        VerifySoftwareTokenResponseTypeSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VerifySoftwareTokenResponseType = VerifySoftwareTokenResponseType'
  { fromVerifySoftwareTokenResponseType ::
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

pattern VerifySoftwareTokenResponseTypeERROR :: VerifySoftwareTokenResponseType
pattern VerifySoftwareTokenResponseTypeERROR = VerifySoftwareTokenResponseType' "ERROR"

pattern VerifySoftwareTokenResponseTypeSUCCESS :: VerifySoftwareTokenResponseType
pattern VerifySoftwareTokenResponseTypeSUCCESS = VerifySoftwareTokenResponseType' "SUCCESS"

{-# COMPLETE
  VerifySoftwareTokenResponseTypeERROR,
  VerifySoftwareTokenResponseTypeSUCCESS,
  VerifySoftwareTokenResponseType'
  #-}

instance Prelude.FromText VerifySoftwareTokenResponseType where
  parser = VerifySoftwareTokenResponseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText VerifySoftwareTokenResponseType where
  toText (VerifySoftwareTokenResponseType' x) = x

instance Prelude.Hashable VerifySoftwareTokenResponseType

instance Prelude.NFData VerifySoftwareTokenResponseType

instance Prelude.ToByteString VerifySoftwareTokenResponseType

instance Prelude.ToQuery VerifySoftwareTokenResponseType

instance Prelude.ToHeader VerifySoftwareTokenResponseType

instance Prelude.FromJSON VerifySoftwareTokenResponseType where
  parseJSON = Prelude.parseJSONText "VerifySoftwareTokenResponseType"
