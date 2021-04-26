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
-- Module      : Network.AWS.MediaLive.Types.EbuTtDDestinationStyleControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EbuTtDDestinationStyleControl
  ( EbuTtDDestinationStyleControl
      ( ..,
        EbuTtDDestinationStyleControlEXCLUDE,
        EbuTtDDestinationStyleControlINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ebu Tt DDestination Style Control
newtype EbuTtDDestinationStyleControl = EbuTtDDestinationStyleControl'
  { fromEbuTtDDestinationStyleControl ::
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

pattern EbuTtDDestinationStyleControlEXCLUDE :: EbuTtDDestinationStyleControl
pattern EbuTtDDestinationStyleControlEXCLUDE = EbuTtDDestinationStyleControl' "EXCLUDE"

pattern EbuTtDDestinationStyleControlINCLUDE :: EbuTtDDestinationStyleControl
pattern EbuTtDDestinationStyleControlINCLUDE = EbuTtDDestinationStyleControl' "INCLUDE"

{-# COMPLETE
  EbuTtDDestinationStyleControlEXCLUDE,
  EbuTtDDestinationStyleControlINCLUDE,
  EbuTtDDestinationStyleControl'
  #-}

instance Prelude.FromText EbuTtDDestinationStyleControl where
  parser = EbuTtDDestinationStyleControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText EbuTtDDestinationStyleControl where
  toText (EbuTtDDestinationStyleControl' x) = x

instance Prelude.Hashable EbuTtDDestinationStyleControl

instance Prelude.NFData EbuTtDDestinationStyleControl

instance Prelude.ToByteString EbuTtDDestinationStyleControl

instance Prelude.ToQuery EbuTtDDestinationStyleControl

instance Prelude.ToHeader EbuTtDDestinationStyleControl

instance Prelude.ToJSON EbuTtDDestinationStyleControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EbuTtDDestinationStyleControl where
  parseJSON = Prelude.parseJSONText "EbuTtDDestinationStyleControl"
