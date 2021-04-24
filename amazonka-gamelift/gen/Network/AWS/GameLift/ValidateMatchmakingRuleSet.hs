{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.ValidateMatchmakingRuleSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the syntax of a matchmaking rule or rule set. This operation checks that the rule set is using syntactically correct JSON and that it conforms to allowed property expressions. To validate syntax, provide a rule set JSON string.
--
--
-- __Learn more__
--
--     * <https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html Build a Rule Set>
--
--
--
-- __Related operations__
--
--     * 'CreateMatchmakingConfiguration'
--
--     * 'DescribeMatchmakingConfigurations'
--
--     * 'UpdateMatchmakingConfiguration'
--
--     * 'DeleteMatchmakingConfiguration'
--
--     * 'CreateMatchmakingRuleSet'
--
--     * 'DescribeMatchmakingRuleSets'
--
--     * 'ValidateMatchmakingRuleSet'
--
--     * 'DeleteMatchmakingRuleSet'
module Network.AWS.GameLift.ValidateMatchmakingRuleSet
  ( -- * Creating a Request
    validateMatchmakingRuleSet,
    ValidateMatchmakingRuleSet,

    -- * Request Lenses
    vmrsRuleSetBody,

    -- * Destructuring the Response
    validateMatchmakingRuleSetResponse,
    ValidateMatchmakingRuleSetResponse,

    -- * Response Lenses
    vmrsrrsValid,
    vmrsrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'validateMatchmakingRuleSet' smart constructor.
newtype ValidateMatchmakingRuleSet = ValidateMatchmakingRuleSet'
  { _vmrsRuleSetBody ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ValidateMatchmakingRuleSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmrsRuleSetBody' - A collection of matchmaking rules to validate, formatted as a JSON string.
validateMatchmakingRuleSet ::
  -- | 'vmrsRuleSetBody'
  Text ->
  ValidateMatchmakingRuleSet
validateMatchmakingRuleSet pRuleSetBody_ =
  ValidateMatchmakingRuleSet'
    { _vmrsRuleSetBody =
        pRuleSetBody_
    }

-- | A collection of matchmaking rules to validate, formatted as a JSON string.
vmrsRuleSetBody :: Lens' ValidateMatchmakingRuleSet Text
vmrsRuleSetBody = lens _vmrsRuleSetBody (\s a -> s {_vmrsRuleSetBody = a})

instance AWSRequest ValidateMatchmakingRuleSet where
  type
    Rs ValidateMatchmakingRuleSet =
      ValidateMatchmakingRuleSetResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          ValidateMatchmakingRuleSetResponse'
            <$> (x .?> "Valid") <*> (pure (fromEnum s))
      )

instance Hashable ValidateMatchmakingRuleSet

instance NFData ValidateMatchmakingRuleSet

instance ToHeaders ValidateMatchmakingRuleSet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "GameLift.ValidateMatchmakingRuleSet" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ValidateMatchmakingRuleSet where
  toJSON ValidateMatchmakingRuleSet' {..} =
    object
      ( catMaybes
          [Just ("RuleSetBody" .= _vmrsRuleSetBody)]
      )

instance ToPath ValidateMatchmakingRuleSet where
  toPath = const "/"

instance ToQuery ValidateMatchmakingRuleSet where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'validateMatchmakingRuleSetResponse' smart constructor.
data ValidateMatchmakingRuleSetResponse = ValidateMatchmakingRuleSetResponse'
  { _vmrsrrsValid ::
      !( Maybe
           Bool
       ),
    _vmrsrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ValidateMatchmakingRuleSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmrsrrsValid' - A response indicating whether the rule set is valid.
--
-- * 'vmrsrrsResponseStatus' - -- | The response status code.
validateMatchmakingRuleSetResponse ::
  -- | 'vmrsrrsResponseStatus'
  Int ->
  ValidateMatchmakingRuleSetResponse
validateMatchmakingRuleSetResponse pResponseStatus_ =
  ValidateMatchmakingRuleSetResponse'
    { _vmrsrrsValid =
        Nothing,
      _vmrsrrsResponseStatus =
        pResponseStatus_
    }

-- | A response indicating whether the rule set is valid.
vmrsrrsValid :: Lens' ValidateMatchmakingRuleSetResponse (Maybe Bool)
vmrsrrsValid = lens _vmrsrrsValid (\s a -> s {_vmrsrrsValid = a})

-- | -- | The response status code.
vmrsrrsResponseStatus :: Lens' ValidateMatchmakingRuleSetResponse Int
vmrsrrsResponseStatus = lens _vmrsrrsResponseStatus (\s a -> s {_vmrsrrsResponseStatus = a})

instance NFData ValidateMatchmakingRuleSetResponse
