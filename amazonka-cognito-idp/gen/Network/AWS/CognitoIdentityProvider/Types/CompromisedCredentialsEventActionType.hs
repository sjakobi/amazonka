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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsEventActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsEventActionType
  ( CompromisedCredentialsEventActionType
      ( ..,
        CompromisedCredentialsEventActionTypeBLOCK,
        CompromisedCredentialsEventActionTypeNOACTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CompromisedCredentialsEventActionType = CompromisedCredentialsEventActionType'
  { fromCompromisedCredentialsEventActionType ::
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

pattern CompromisedCredentialsEventActionTypeBLOCK :: CompromisedCredentialsEventActionType
pattern CompromisedCredentialsEventActionTypeBLOCK = CompromisedCredentialsEventActionType' "BLOCK"

pattern CompromisedCredentialsEventActionTypeNOACTION :: CompromisedCredentialsEventActionType
pattern CompromisedCredentialsEventActionTypeNOACTION = CompromisedCredentialsEventActionType' "NO_ACTION"

{-# COMPLETE
  CompromisedCredentialsEventActionTypeBLOCK,
  CompromisedCredentialsEventActionTypeNOACTION,
  CompromisedCredentialsEventActionType'
  #-}

instance Prelude.FromText CompromisedCredentialsEventActionType where
  parser = CompromisedCredentialsEventActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CompromisedCredentialsEventActionType where
  toText (CompromisedCredentialsEventActionType' x) = x

instance Prelude.Hashable CompromisedCredentialsEventActionType

instance Prelude.NFData CompromisedCredentialsEventActionType

instance Prelude.ToByteString CompromisedCredentialsEventActionType

instance Prelude.ToQuery CompromisedCredentialsEventActionType

instance Prelude.ToHeader CompromisedCredentialsEventActionType

instance Prelude.ToJSON CompromisedCredentialsEventActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CompromisedCredentialsEventActionType where
  parseJSON = Prelude.parseJSONText "CompromisedCredentialsEventActionType"
