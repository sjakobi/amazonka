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
-- Module      : Network.AWS.GameLift.Types.GameServerHealthCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerHealthCheck
  ( GameServerHealthCheck
      ( ..,
        GameServerHealthCheckHEALTHY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerHealthCheck = GameServerHealthCheck'
  { fromGameServerHealthCheck ::
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

pattern GameServerHealthCheckHEALTHY :: GameServerHealthCheck
pattern GameServerHealthCheckHEALTHY = GameServerHealthCheck' "HEALTHY"

{-# COMPLETE
  GameServerHealthCheckHEALTHY,
  GameServerHealthCheck'
  #-}

instance Prelude.FromText GameServerHealthCheck where
  parser = GameServerHealthCheck' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerHealthCheck where
  toText (GameServerHealthCheck' x) = x

instance Prelude.Hashable GameServerHealthCheck

instance Prelude.NFData GameServerHealthCheck

instance Prelude.ToByteString GameServerHealthCheck

instance Prelude.ToQuery GameServerHealthCheck

instance Prelude.ToHeader GameServerHealthCheck

instance Prelude.ToJSON GameServerHealthCheck where
  toJSON = Prelude.toJSONText
