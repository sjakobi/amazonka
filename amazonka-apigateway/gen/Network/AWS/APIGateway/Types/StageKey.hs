{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.StageKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.StageKey where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A reference to a unique stage identified in the format @{restApiId}/{stage}@ .
--
--
--
-- /See:/ 'stageKey' smart constructor.
data StageKey = StageKey'
  { _skStageName ::
      !(Maybe Text),
    _skRestAPIId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StageKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'skStageName' - The stage name associated with the stage key.
--
-- * 'skRestAPIId' - The string identifier of the associated 'RestApi' .
stageKey ::
  StageKey
stageKey =
  StageKey'
    { _skStageName = Nothing,
      _skRestAPIId = Nothing
    }

-- | The stage name associated with the stage key.
skStageName :: Lens' StageKey (Maybe Text)
skStageName = lens _skStageName (\s a -> s {_skStageName = a})

-- | The string identifier of the associated 'RestApi' .
skRestAPIId :: Lens' StageKey (Maybe Text)
skRestAPIId = lens _skRestAPIId (\s a -> s {_skRestAPIId = a})

instance Hashable StageKey

instance NFData StageKey

instance ToJSON StageKey where
  toJSON StageKey' {..} =
    object
      ( catMaybes
          [ ("stageName" .=) <$> _skStageName,
            ("restApiId" .=) <$> _skRestAPIId
          ]
      )
