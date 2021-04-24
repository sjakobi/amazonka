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
-- Module      : Network.AWS.ServiceCatalog.UpdateConstraint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified constraint.
module Network.AWS.ServiceCatalog.UpdateConstraint
  ( -- * Creating a Request
    updateConstraint,
    UpdateConstraint,

    -- * Request Lenses
    ucDescription,
    ucParameters,
    ucAcceptLanguage,
    ucId,

    -- * Destructuring the Response
    updateConstraintResponse,
    UpdateConstraintResponse,

    -- * Response Lenses
    ucrrsConstraintParameters,
    ucrrsStatus,
    ucrrsConstraintDetail,
    ucrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateConstraint' smart constructor.
data UpdateConstraint = UpdateConstraint'
  { _ucDescription ::
      !(Maybe Text),
    _ucParameters :: !(Maybe Text),
    _ucAcceptLanguage :: !(Maybe Text),
    _ucId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateConstraint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucDescription' - The updated description of the constraint.
--
-- * 'ucParameters' - The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:     * LAUNCH    * You are required to specify either the @RoleArn@ or the @LocalRoleName@ but can't use both. Specify the @RoleArn@ property as follows: @{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}@  Specify the @LocalRoleName@ property as follows: @{"LocalRoleName": "SCBasicLaunchRole"}@  If you specify the @LocalRoleName@ property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be account-agnostic so the administrator can create fewer resources per shared account. You cannot have both a @LAUNCH@ and a @STACKSET@ constraint. You also cannot have more than one @LAUNCH@ constraint on a product and portfolio.     * NOTIFICATION    * Specify the @NotificationArns@ property as follows: @{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}@      * RESOURCE_UPDATE    * Specify the @TagUpdatesOnProvisionedProduct@ property as follows: @{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}@  The @TagUpdatesOnProvisionedProduct@ property accepts a string value of @ALLOWED@ or @NOT_ALLOWED@ .     * STACKSET    * Specify the @Parameters@ property as follows: @{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}@  You cannot have both a @LAUNCH@ and a @STACKSET@ constraint. You also cannot have more than one @STACKSET@ constraint on a product and portfolio. Products with a @STACKSET@ constraint will launch an AWS CloudFormation stack set.     * TEMPLATE    * Specify the @Rules@ property. For more information, see <http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html Template Constraint Rules> .
--
-- * 'ucAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'ucId' - The identifier of the constraint.
updateConstraint ::
  -- | 'ucId'
  Text ->
  UpdateConstraint
updateConstraint pId_ =
  UpdateConstraint'
    { _ucDescription = Nothing,
      _ucParameters = Nothing,
      _ucAcceptLanguage = Nothing,
      _ucId = pId_
    }

-- | The updated description of the constraint.
ucDescription :: Lens' UpdateConstraint (Maybe Text)
ucDescription = lens _ucDescription (\s a -> s {_ucDescription = a})

-- | The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:     * LAUNCH    * You are required to specify either the @RoleArn@ or the @LocalRoleName@ but can't use both. Specify the @RoleArn@ property as follows: @{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}@  Specify the @LocalRoleName@ property as follows: @{"LocalRoleName": "SCBasicLaunchRole"}@  If you specify the @LocalRoleName@ property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be account-agnostic so the administrator can create fewer resources per shared account. You cannot have both a @LAUNCH@ and a @STACKSET@ constraint. You also cannot have more than one @LAUNCH@ constraint on a product and portfolio.     * NOTIFICATION    * Specify the @NotificationArns@ property as follows: @{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}@      * RESOURCE_UPDATE    * Specify the @TagUpdatesOnProvisionedProduct@ property as follows: @{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}@  The @TagUpdatesOnProvisionedProduct@ property accepts a string value of @ALLOWED@ or @NOT_ALLOWED@ .     * STACKSET    * Specify the @Parameters@ property as follows: @{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}@  You cannot have both a @LAUNCH@ and a @STACKSET@ constraint. You also cannot have more than one @STACKSET@ constraint on a product and portfolio. Products with a @STACKSET@ constraint will launch an AWS CloudFormation stack set.     * TEMPLATE    * Specify the @Rules@ property. For more information, see <http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html Template Constraint Rules> .
ucParameters :: Lens' UpdateConstraint (Maybe Text)
ucParameters = lens _ucParameters (\s a -> s {_ucParameters = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
ucAcceptLanguage :: Lens' UpdateConstraint (Maybe Text)
ucAcceptLanguage = lens _ucAcceptLanguage (\s a -> s {_ucAcceptLanguage = a})

-- | The identifier of the constraint.
ucId :: Lens' UpdateConstraint Text
ucId = lens _ucId (\s a -> s {_ucId = a})

instance AWSRequest UpdateConstraint where
  type Rs UpdateConstraint = UpdateConstraintResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateConstraintResponse'
            <$> (x .?> "ConstraintParameters")
            <*> (x .?> "Status")
            <*> (x .?> "ConstraintDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateConstraint

instance NFData UpdateConstraint

instance ToHeaders UpdateConstraint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateConstraint" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateConstraint where
  toJSON UpdateConstraint' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _ucDescription,
            ("Parameters" .=) <$> _ucParameters,
            ("AcceptLanguage" .=) <$> _ucAcceptLanguage,
            Just ("Id" .= _ucId)
          ]
      )

instance ToPath UpdateConstraint where
  toPath = const "/"

instance ToQuery UpdateConstraint where
  toQuery = const mempty

-- | /See:/ 'updateConstraintResponse' smart constructor.
data UpdateConstraintResponse = UpdateConstraintResponse'
  { _ucrrsConstraintParameters ::
      !(Maybe Text),
    _ucrrsStatus ::
      !( Maybe
           RequestStatus
       ),
    _ucrrsConstraintDetail ::
      !( Maybe
           ConstraintDetail
       ),
    _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateConstraintResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsConstraintParameters' - The constraint parameters.
--
-- * 'ucrrsStatus' - The status of the current request.
--
-- * 'ucrrsConstraintDetail' - Information about the constraint.
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateConstraintResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateConstraintResponse
updateConstraintResponse pResponseStatus_ =
  UpdateConstraintResponse'
    { _ucrrsConstraintParameters =
        Nothing,
      _ucrrsStatus = Nothing,
      _ucrrsConstraintDetail = Nothing,
      _ucrrsResponseStatus = pResponseStatus_
    }

-- | The constraint parameters.
ucrrsConstraintParameters :: Lens' UpdateConstraintResponse (Maybe Text)
ucrrsConstraintParameters = lens _ucrrsConstraintParameters (\s a -> s {_ucrrsConstraintParameters = a})

-- | The status of the current request.
ucrrsStatus :: Lens' UpdateConstraintResponse (Maybe RequestStatus)
ucrrsStatus = lens _ucrrsStatus (\s a -> s {_ucrrsStatus = a})

-- | Information about the constraint.
ucrrsConstraintDetail :: Lens' UpdateConstraintResponse (Maybe ConstraintDetail)
ucrrsConstraintDetail = lens _ucrrsConstraintDetail (\s a -> s {_ucrrsConstraintDetail = a})

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateConstraintResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateConstraintResponse
