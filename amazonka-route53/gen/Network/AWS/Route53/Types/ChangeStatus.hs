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
-- Module      : Network.AWS.Route53.Types.ChangeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ChangeStatus
  ( ChangeStatus
      ( ..,
        ChangeStatusINSYNC,
        ChangeStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype ChangeStatus = ChangeStatus'
  { fromChangeStatus ::
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

pattern ChangeStatusINSYNC :: ChangeStatus
pattern ChangeStatusINSYNC = ChangeStatus' "INSYNC"

pattern ChangeStatusPENDING :: ChangeStatus
pattern ChangeStatusPENDING = ChangeStatus' "PENDING"

{-# COMPLETE
  ChangeStatusINSYNC,
  ChangeStatusPENDING,
  ChangeStatus'
  #-}

instance Prelude.FromText ChangeStatus where
  parser = ChangeStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeStatus where
  toText (ChangeStatus' x) = x

instance Prelude.Hashable ChangeStatus

instance Prelude.NFData ChangeStatus

instance Prelude.ToByteString ChangeStatus

instance Prelude.ToQuery ChangeStatus

instance Prelude.ToHeader ChangeStatus

instance Prelude.FromXML ChangeStatus where
  parseXML = Prelude.parseXMLText "ChangeStatus"
