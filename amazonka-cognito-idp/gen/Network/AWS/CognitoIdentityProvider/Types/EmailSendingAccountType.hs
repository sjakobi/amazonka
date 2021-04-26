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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EmailSendingAccountType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EmailSendingAccountType
  ( EmailSendingAccountType
      ( ..,
        EmailSendingAccountTypeCOGNITODEFAULT,
        EmailSendingAccountTypeDEVELOPER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EmailSendingAccountType = EmailSendingAccountType'
  { fromEmailSendingAccountType ::
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

pattern EmailSendingAccountTypeCOGNITODEFAULT :: EmailSendingAccountType
pattern EmailSendingAccountTypeCOGNITODEFAULT = EmailSendingAccountType' "COGNITO_DEFAULT"

pattern EmailSendingAccountTypeDEVELOPER :: EmailSendingAccountType
pattern EmailSendingAccountTypeDEVELOPER = EmailSendingAccountType' "DEVELOPER"

{-# COMPLETE
  EmailSendingAccountTypeCOGNITODEFAULT,
  EmailSendingAccountTypeDEVELOPER,
  EmailSendingAccountType'
  #-}

instance Prelude.FromText EmailSendingAccountType where
  parser = EmailSendingAccountType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EmailSendingAccountType where
  toText (EmailSendingAccountType' x) = x

instance Prelude.Hashable EmailSendingAccountType

instance Prelude.NFData EmailSendingAccountType

instance Prelude.ToByteString EmailSendingAccountType

instance Prelude.ToQuery EmailSendingAccountType

instance Prelude.ToHeader EmailSendingAccountType

instance Prelude.ToJSON EmailSendingAccountType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EmailSendingAccountType where
  parseJSON = Prelude.parseJSONText "EmailSendingAccountType"
