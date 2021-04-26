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
-- Module      : Network.AWS.IAM.Types.StatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.StatusType
  ( StatusType
      ( ..,
        StatusTypeActive,
        StatusTypeInactive
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StatusType = StatusType'
  { fromStatusType ::
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

pattern StatusTypeActive :: StatusType
pattern StatusTypeActive = StatusType' "Active"

pattern StatusTypeInactive :: StatusType
pattern StatusTypeInactive = StatusType' "Inactive"

{-# COMPLETE
  StatusTypeActive,
  StatusTypeInactive,
  StatusType'
  #-}

instance Prelude.FromText StatusType where
  parser = StatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StatusType where
  toText (StatusType' x) = x

instance Prelude.Hashable StatusType

instance Prelude.NFData StatusType

instance Prelude.ToByteString StatusType

instance Prelude.ToQuery StatusType

instance Prelude.ToHeader StatusType

instance Prelude.FromXML StatusType where
  parseXML = Prelude.parseXMLText "StatusType"
