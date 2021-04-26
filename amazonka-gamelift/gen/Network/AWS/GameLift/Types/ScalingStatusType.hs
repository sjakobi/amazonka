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
-- Module      : Network.AWS.GameLift.Types.ScalingStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.ScalingStatusType
  ( ScalingStatusType
      ( ..,
        ScalingStatusTypeACTIVE,
        ScalingStatusTypeDELETED,
        ScalingStatusTypeDELETEREQUESTED,
        ScalingStatusTypeDELETING,
        ScalingStatusTypeERROR,
        ScalingStatusTypeUPDATEREQUESTED,
        ScalingStatusTypeUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingStatusType = ScalingStatusType'
  { fromScalingStatusType ::
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

pattern ScalingStatusTypeACTIVE :: ScalingStatusType
pattern ScalingStatusTypeACTIVE = ScalingStatusType' "ACTIVE"

pattern ScalingStatusTypeDELETED :: ScalingStatusType
pattern ScalingStatusTypeDELETED = ScalingStatusType' "DELETED"

pattern ScalingStatusTypeDELETEREQUESTED :: ScalingStatusType
pattern ScalingStatusTypeDELETEREQUESTED = ScalingStatusType' "DELETE_REQUESTED"

pattern ScalingStatusTypeDELETING :: ScalingStatusType
pattern ScalingStatusTypeDELETING = ScalingStatusType' "DELETING"

pattern ScalingStatusTypeERROR :: ScalingStatusType
pattern ScalingStatusTypeERROR = ScalingStatusType' "ERROR"

pattern ScalingStatusTypeUPDATEREQUESTED :: ScalingStatusType
pattern ScalingStatusTypeUPDATEREQUESTED = ScalingStatusType' "UPDATE_REQUESTED"

pattern ScalingStatusTypeUPDATING :: ScalingStatusType
pattern ScalingStatusTypeUPDATING = ScalingStatusType' "UPDATING"

{-# COMPLETE
  ScalingStatusTypeACTIVE,
  ScalingStatusTypeDELETED,
  ScalingStatusTypeDELETEREQUESTED,
  ScalingStatusTypeDELETING,
  ScalingStatusTypeERROR,
  ScalingStatusTypeUPDATEREQUESTED,
  ScalingStatusTypeUPDATING,
  ScalingStatusType'
  #-}

instance Prelude.FromText ScalingStatusType where
  parser = ScalingStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingStatusType where
  toText (ScalingStatusType' x) = x

instance Prelude.Hashable ScalingStatusType

instance Prelude.NFData ScalingStatusType

instance Prelude.ToByteString ScalingStatusType

instance Prelude.ToQuery ScalingStatusType

instance Prelude.ToHeader ScalingStatusType

instance Prelude.ToJSON ScalingStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScalingStatusType where
  parseJSON = Prelude.parseJSONText "ScalingStatusType"
