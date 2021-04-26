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
-- Module      : Network.AWS.CloudDirectory.Types.UpdateActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.UpdateActionType
  ( UpdateActionType
      ( ..,
        UpdateActionTypeCREATEORUPDATE,
        UpdateActionTypeDELETE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpdateActionType = UpdateActionType'
  { fromUpdateActionType ::
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

pattern UpdateActionTypeCREATEORUPDATE :: UpdateActionType
pattern UpdateActionTypeCREATEORUPDATE = UpdateActionType' "CREATE_OR_UPDATE"

pattern UpdateActionTypeDELETE :: UpdateActionType
pattern UpdateActionTypeDELETE = UpdateActionType' "DELETE"

{-# COMPLETE
  UpdateActionTypeCREATEORUPDATE,
  UpdateActionTypeDELETE,
  UpdateActionType'
  #-}

instance Prelude.FromText UpdateActionType where
  parser = UpdateActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateActionType where
  toText (UpdateActionType' x) = x

instance Prelude.Hashable UpdateActionType

instance Prelude.NFData UpdateActionType

instance Prelude.ToByteString UpdateActionType

instance Prelude.ToQuery UpdateActionType

instance Prelude.ToHeader UpdateActionType

instance Prelude.ToJSON UpdateActionType where
  toJSON = Prelude.toJSONText
