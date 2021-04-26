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
-- Module      : Network.AWS.MediaConvert.Types.QueueListBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.QueueListBy
  ( QueueListBy
      ( ..,
        QueueListByCREATIONDATE,
        QueueListByNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. When you request a list of queues, you can choose to list them
-- alphabetically by NAME or chronologically by CREATION_DATE. If you
-- don\'t specify, the service will list them by creation date.
newtype QueueListBy = QueueListBy'
  { fromQueueListBy ::
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

pattern QueueListByCREATIONDATE :: QueueListBy
pattern QueueListByCREATIONDATE = QueueListBy' "CREATION_DATE"

pattern QueueListByNAME :: QueueListBy
pattern QueueListByNAME = QueueListBy' "NAME"

{-# COMPLETE
  QueueListByCREATIONDATE,
  QueueListByNAME,
  QueueListBy'
  #-}

instance Prelude.FromText QueueListBy where
  parser = QueueListBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueueListBy where
  toText (QueueListBy' x) = x

instance Prelude.Hashable QueueListBy

instance Prelude.NFData QueueListBy

instance Prelude.ToByteString QueueListBy

instance Prelude.ToQuery QueueListBy

instance Prelude.ToHeader QueueListBy

instance Prelude.ToJSON QueueListBy where
  toJSON = Prelude.toJSONText
