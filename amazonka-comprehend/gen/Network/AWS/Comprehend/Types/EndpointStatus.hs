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
-- Module      : Network.AWS.Comprehend.Types.EndpointStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EndpointStatus
  ( EndpointStatus
      ( ..,
        EndpointStatusCREATING,
        EndpointStatusDELETING,
        EndpointStatusFAILED,
        EndpointStatusINSERVICE,
        EndpointStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndpointStatus = EndpointStatus'
  { fromEndpointStatus ::
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

pattern EndpointStatusCREATING :: EndpointStatus
pattern EndpointStatusCREATING = EndpointStatus' "CREATING"

pattern EndpointStatusDELETING :: EndpointStatus
pattern EndpointStatusDELETING = EndpointStatus' "DELETING"

pattern EndpointStatusFAILED :: EndpointStatus
pattern EndpointStatusFAILED = EndpointStatus' "FAILED"

pattern EndpointStatusINSERVICE :: EndpointStatus
pattern EndpointStatusINSERVICE = EndpointStatus' "IN_SERVICE"

pattern EndpointStatusUPDATING :: EndpointStatus
pattern EndpointStatusUPDATING = EndpointStatus' "UPDATING"

{-# COMPLETE
  EndpointStatusCREATING,
  EndpointStatusDELETING,
  EndpointStatusFAILED,
  EndpointStatusINSERVICE,
  EndpointStatusUPDATING,
  EndpointStatus'
  #-}

instance Prelude.FromText EndpointStatus where
  parser = EndpointStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndpointStatus where
  toText (EndpointStatus' x) = x

instance Prelude.Hashable EndpointStatus

instance Prelude.NFData EndpointStatus

instance Prelude.ToByteString EndpointStatus

instance Prelude.ToQuery EndpointStatus

instance Prelude.ToHeader EndpointStatus

instance Prelude.ToJSON EndpointStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EndpointStatus where
  parseJSON = Prelude.parseJSONText "EndpointStatus"
