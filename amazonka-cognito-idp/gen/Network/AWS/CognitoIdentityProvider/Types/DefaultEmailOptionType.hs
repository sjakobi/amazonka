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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DefaultEmailOptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DefaultEmailOptionType
  ( DefaultEmailOptionType
      ( ..,
        DefaultEmailOptionTypeCONFIRMWITHCODE,
        DefaultEmailOptionTypeCONFIRMWITHLINK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DefaultEmailOptionType = DefaultEmailOptionType'
  { fromDefaultEmailOptionType ::
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

pattern DefaultEmailOptionTypeCONFIRMWITHCODE :: DefaultEmailOptionType
pattern DefaultEmailOptionTypeCONFIRMWITHCODE = DefaultEmailOptionType' "CONFIRM_WITH_CODE"

pattern DefaultEmailOptionTypeCONFIRMWITHLINK :: DefaultEmailOptionType
pattern DefaultEmailOptionTypeCONFIRMWITHLINK = DefaultEmailOptionType' "CONFIRM_WITH_LINK"

{-# COMPLETE
  DefaultEmailOptionTypeCONFIRMWITHCODE,
  DefaultEmailOptionTypeCONFIRMWITHLINK,
  DefaultEmailOptionType'
  #-}

instance Prelude.FromText DefaultEmailOptionType where
  parser = DefaultEmailOptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DefaultEmailOptionType where
  toText (DefaultEmailOptionType' x) = x

instance Prelude.Hashable DefaultEmailOptionType

instance Prelude.NFData DefaultEmailOptionType

instance Prelude.ToByteString DefaultEmailOptionType

instance Prelude.ToQuery DefaultEmailOptionType

instance Prelude.ToHeader DefaultEmailOptionType

instance Prelude.ToJSON DefaultEmailOptionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DefaultEmailOptionType where
  parseJSON = Prelude.parseJSONText "DefaultEmailOptionType"
