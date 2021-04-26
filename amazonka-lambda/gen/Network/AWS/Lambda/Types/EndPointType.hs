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
-- Module      : Network.AWS.Lambda.Types.EndPointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.EndPointType
  ( EndPointType
      ( ..,
        EndPointTypeKAFKABOOTSTRAPSERVERS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EndPointType = EndPointType'
  { fromEndPointType ::
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

pattern EndPointTypeKAFKABOOTSTRAPSERVERS :: EndPointType
pattern EndPointTypeKAFKABOOTSTRAPSERVERS = EndPointType' "KAFKA_BOOTSTRAP_SERVERS"

{-# COMPLETE
  EndPointTypeKAFKABOOTSTRAPSERVERS,
  EndPointType'
  #-}

instance Prelude.FromText EndPointType where
  parser = EndPointType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndPointType where
  toText (EndPointType' x) = x

instance Prelude.Hashable EndPointType

instance Prelude.NFData EndPointType

instance Prelude.ToByteString EndPointType

instance Prelude.ToQuery EndPointType

instance Prelude.ToHeader EndPointType

instance Prelude.ToJSON EndPointType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EndPointType where
  parseJSON = Prelude.parseJSONText "EndPointType"
