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
-- Module      : Network.AWS.APIGateway.Types.EndpointType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.EndpointType
  ( EndpointType
      ( ..,
        EndpointTypeEDGE,
        EndpointTypePRIVATE,
        EndpointTypeREGIONAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The endpoint type. The valid values are @EDGE@ for edge-optimized API
-- setup, most suitable for mobile applications; @REGIONAL@ for regional
-- API endpoint setup, most suitable for calling from AWS Region; and
-- @PRIVATE@ for private APIs.
newtype EndpointType = EndpointType'
  { fromEndpointType ::
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

pattern EndpointTypeEDGE :: EndpointType
pattern EndpointTypeEDGE = EndpointType' "EDGE"

pattern EndpointTypePRIVATE :: EndpointType
pattern EndpointTypePRIVATE = EndpointType' "PRIVATE"

pattern EndpointTypeREGIONAL :: EndpointType
pattern EndpointTypeREGIONAL = EndpointType' "REGIONAL"

{-# COMPLETE
  EndpointTypeEDGE,
  EndpointTypePRIVATE,
  EndpointTypeREGIONAL,
  EndpointType'
  #-}

instance Prelude.FromText EndpointType where
  parser = EndpointType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EndpointType where
  toText (EndpointType' x) = x

instance Prelude.Hashable EndpointType

instance Prelude.NFData EndpointType

instance Prelude.ToByteString EndpointType

instance Prelude.ToQuery EndpointType

instance Prelude.ToHeader EndpointType

instance Prelude.ToJSON EndpointType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EndpointType where
  parseJSON = Prelude.parseJSONText "EndpointType"
