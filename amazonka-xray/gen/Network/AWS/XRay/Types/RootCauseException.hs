{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.RootCauseException
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.RootCauseException where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The exception associated with a root cause.
--
--
--
-- /See:/ 'rootCauseException' smart constructor.
data RootCauseException = RootCauseException'
  { _rceMessage ::
      !(Maybe Text),
    _rceName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RootCauseException' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rceMessage' - The message of the exception.
--
-- * 'rceName' - The name of the exception.
rootCauseException ::
  RootCauseException
rootCauseException =
  RootCauseException'
    { _rceMessage = Nothing,
      _rceName = Nothing
    }

-- | The message of the exception.
rceMessage :: Lens' RootCauseException (Maybe Text)
rceMessage = lens _rceMessage (\s a -> s {_rceMessage = a})

-- | The name of the exception.
rceName :: Lens' RootCauseException (Maybe Text)
rceName = lens _rceName (\s a -> s {_rceName = a})

instance FromJSON RootCauseException where
  parseJSON =
    withObject
      "RootCauseException"
      ( \x ->
          RootCauseException'
            <$> (x .:? "Message") <*> (x .:? "Name")
      )

instance Hashable RootCauseException

instance NFData RootCauseException
