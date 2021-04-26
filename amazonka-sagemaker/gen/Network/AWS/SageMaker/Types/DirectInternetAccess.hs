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
-- Module      : Network.AWS.SageMaker.Types.DirectInternetAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DirectInternetAccess
  ( DirectInternetAccess
      ( ..,
        DirectInternetAccessDisabled,
        DirectInternetAccessEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DirectInternetAccess = DirectInternetAccess'
  { fromDirectInternetAccess ::
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

pattern DirectInternetAccessDisabled :: DirectInternetAccess
pattern DirectInternetAccessDisabled = DirectInternetAccess' "Disabled"

pattern DirectInternetAccessEnabled :: DirectInternetAccess
pattern DirectInternetAccessEnabled = DirectInternetAccess' "Enabled"

{-# COMPLETE
  DirectInternetAccessDisabled,
  DirectInternetAccessEnabled,
  DirectInternetAccess'
  #-}

instance Prelude.FromText DirectInternetAccess where
  parser = DirectInternetAccess' Prelude.<$> Prelude.takeText

instance Prelude.ToText DirectInternetAccess where
  toText (DirectInternetAccess' x) = x

instance Prelude.Hashable DirectInternetAccess

instance Prelude.NFData DirectInternetAccess

instance Prelude.ToByteString DirectInternetAccess

instance Prelude.ToQuery DirectInternetAccess

instance Prelude.ToHeader DirectInternetAccess

instance Prelude.ToJSON DirectInternetAccess where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DirectInternetAccess where
  parseJSON = Prelude.parseJSONText "DirectInternetAccess"
