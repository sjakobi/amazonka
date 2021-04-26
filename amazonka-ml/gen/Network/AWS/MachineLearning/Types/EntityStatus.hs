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
-- Module      : Network.AWS.MachineLearning.Types.EntityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.EntityStatus
  ( EntityStatus
      ( ..,
        EntityStatusCOMPLETED,
        EntityStatusDELETED,
        EntityStatusFAILED,
        EntityStatusINPROGRESS,
        EntityStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Object status with the following possible values:
--
-- -   @PENDING@
-- -   @INPROGRESS@
-- -   @FAILED@
-- -   @COMPLETED@
-- -   @DELETED@
newtype EntityStatus = EntityStatus'
  { fromEntityStatus ::
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

pattern EntityStatusCOMPLETED :: EntityStatus
pattern EntityStatusCOMPLETED = EntityStatus' "COMPLETED"

pattern EntityStatusDELETED :: EntityStatus
pattern EntityStatusDELETED = EntityStatus' "DELETED"

pattern EntityStatusFAILED :: EntityStatus
pattern EntityStatusFAILED = EntityStatus' "FAILED"

pattern EntityStatusINPROGRESS :: EntityStatus
pattern EntityStatusINPROGRESS = EntityStatus' "INPROGRESS"

pattern EntityStatusPENDING :: EntityStatus
pattern EntityStatusPENDING = EntityStatus' "PENDING"

{-# COMPLETE
  EntityStatusCOMPLETED,
  EntityStatusDELETED,
  EntityStatusFAILED,
  EntityStatusINPROGRESS,
  EntityStatusPENDING,
  EntityStatus'
  #-}

instance Prelude.FromText EntityStatus where
  parser = EntityStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EntityStatus where
  toText (EntityStatus' x) = x

instance Prelude.Hashable EntityStatus

instance Prelude.NFData EntityStatus

instance Prelude.ToByteString EntityStatus

instance Prelude.ToQuery EntityStatus

instance Prelude.ToHeader EntityStatus

instance Prelude.FromJSON EntityStatus where
  parseJSON = Prelude.parseJSONText "EntityStatus"
