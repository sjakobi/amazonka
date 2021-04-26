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
-- Module      : Network.AWS.IoT.Types.ActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ActionType
  ( ActionType
      ( ..,
        ActionTypeCONNECT,
        ActionTypePUBLISH,
        ActionTypeRECEIVE,
        ActionTypeSUBSCRIBE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionType = ActionType'
  { fromActionType ::
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

pattern ActionTypeCONNECT :: ActionType
pattern ActionTypeCONNECT = ActionType' "CONNECT"

pattern ActionTypePUBLISH :: ActionType
pattern ActionTypePUBLISH = ActionType' "PUBLISH"

pattern ActionTypeRECEIVE :: ActionType
pattern ActionTypeRECEIVE = ActionType' "RECEIVE"

pattern ActionTypeSUBSCRIBE :: ActionType
pattern ActionTypeSUBSCRIBE = ActionType' "SUBSCRIBE"

{-# COMPLETE
  ActionTypeCONNECT,
  ActionTypePUBLISH,
  ActionTypeRECEIVE,
  ActionTypeSUBSCRIBE,
  ActionType'
  #-}

instance Prelude.FromText ActionType where
  parser = ActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionType where
  toText (ActionType' x) = x

instance Prelude.Hashable ActionType

instance Prelude.NFData ActionType

instance Prelude.ToByteString ActionType

instance Prelude.ToQuery ActionType

instance Prelude.ToHeader ActionType

instance Prelude.ToJSON ActionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ActionType where
  parseJSON = Prelude.parseJSONText "ActionType"
