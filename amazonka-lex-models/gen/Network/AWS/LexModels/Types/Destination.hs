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
-- Module      : Network.AWS.LexModels.Types.Destination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Destination
  ( Destination
      ( ..,
        DestinationCLOUDWATCHLOGS,
        DestinationS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Destination = Destination'
  { fromDestination ::
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

pattern DestinationCLOUDWATCHLOGS :: Destination
pattern DestinationCLOUDWATCHLOGS = Destination' "CLOUDWATCH_LOGS"

pattern DestinationS3 :: Destination
pattern DestinationS3 = Destination' "S3"

{-# COMPLETE
  DestinationCLOUDWATCHLOGS,
  DestinationS3,
  Destination'
  #-}

instance Prelude.FromText Destination where
  parser = Destination' Prelude.<$> Prelude.takeText

instance Prelude.ToText Destination where
  toText (Destination' x) = x

instance Prelude.Hashable Destination

instance Prelude.NFData Destination

instance Prelude.ToByteString Destination

instance Prelude.ToQuery Destination

instance Prelude.ToHeader Destination

instance Prelude.ToJSON Destination where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Destination where
  parseJSON = Prelude.parseJSONText "Destination"
