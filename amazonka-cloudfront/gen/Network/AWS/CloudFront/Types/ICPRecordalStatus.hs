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
-- Module      : Network.AWS.CloudFront.Types.ICPRecordalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.ICPRecordalStatus
  ( ICPRecordalStatus
      ( ..,
        ICPRecordalStatusAPPROVED,
        ICPRecordalStatusPENDING,
        ICPRecordalStatusSUSPENDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ICPRecordalStatus = ICPRecordalStatus'
  { fromICPRecordalStatus ::
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

pattern ICPRecordalStatusAPPROVED :: ICPRecordalStatus
pattern ICPRecordalStatusAPPROVED = ICPRecordalStatus' "APPROVED"

pattern ICPRecordalStatusPENDING :: ICPRecordalStatus
pattern ICPRecordalStatusPENDING = ICPRecordalStatus' "PENDING"

pattern ICPRecordalStatusSUSPENDED :: ICPRecordalStatus
pattern ICPRecordalStatusSUSPENDED = ICPRecordalStatus' "SUSPENDED"

{-# COMPLETE
  ICPRecordalStatusAPPROVED,
  ICPRecordalStatusPENDING,
  ICPRecordalStatusSUSPENDED,
  ICPRecordalStatus'
  #-}

instance Prelude.FromText ICPRecordalStatus where
  parser = ICPRecordalStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ICPRecordalStatus where
  toText (ICPRecordalStatus' x) = x

instance Prelude.Hashable ICPRecordalStatus

instance Prelude.NFData ICPRecordalStatus

instance Prelude.ToByteString ICPRecordalStatus

instance Prelude.ToQuery ICPRecordalStatus

instance Prelude.ToHeader ICPRecordalStatus

instance Prelude.FromXML ICPRecordalStatus where
  parseXML = Prelude.parseXMLText "ICPRecordalStatus"
