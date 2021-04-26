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
-- Module      : Network.AWS.KinesisVideo.Types.ChannelRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelRole
  ( ChannelRole
      ( ..,
        ChannelRoleMASTER,
        ChannelRoleVIEWER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelRole = ChannelRole'
  { fromChannelRole ::
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

pattern ChannelRoleMASTER :: ChannelRole
pattern ChannelRoleMASTER = ChannelRole' "MASTER"

pattern ChannelRoleVIEWER :: ChannelRole
pattern ChannelRoleVIEWER = ChannelRole' "VIEWER"

{-# COMPLETE
  ChannelRoleMASTER,
  ChannelRoleVIEWER,
  ChannelRole'
  #-}

instance Prelude.FromText ChannelRole where
  parser = ChannelRole' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelRole where
  toText (ChannelRole' x) = x

instance Prelude.Hashable ChannelRole

instance Prelude.NFData ChannelRole

instance Prelude.ToByteString ChannelRole

instance Prelude.ToQuery ChannelRole

instance Prelude.ToHeader ChannelRole

instance Prelude.ToJSON ChannelRole where
  toJSON = Prelude.toJSONText
