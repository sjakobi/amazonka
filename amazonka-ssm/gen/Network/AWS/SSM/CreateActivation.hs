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
-- Module      : Network.AWS.SSM.CreateActivation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an activation code and activation ID you can use to register your on-premises server or virtual machine (VM) with Systems Manager. Registering these machines with Systems Manager makes it possible to manage them using Systems Manager capabilities. You use the activation code and ID when installing SSM Agent on machines in your hybrid environment. For more information about requirements for managing on-premises instances and VMs using Systems Manager, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html Setting up AWS Systems Manager for hybrid environments> in the /AWS Systems Manager User Guide/ .
module Network.AWS.SSM.CreateActivation
  ( -- * Creating a Request
    createActivation,
    CreateActivation,

    -- * Request Lenses
    caRegistrationLimit,
    caDefaultInstanceName,
    caExpirationDate,
    caTags,
    caDescription,
    caIAMRole,

    -- * Destructuring the Response
    createActivationResponse,
    CreateActivationResponse,

    -- * Response Lenses
    carrsActivationCode,
    carrsActivationId,
    carrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'createActivation' smart constructor.
data CreateActivation = CreateActivation'
  { _caRegistrationLimit ::
      !(Maybe Nat),
    _caDefaultInstanceName ::
      !(Maybe Text),
    _caExpirationDate :: !(Maybe POSIX),
    _caTags :: !(Maybe [Tag]),
    _caDescription :: !(Maybe Text),
    _caIAMRole :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateActivation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caRegistrationLimit' - Specify the maximum number of managed instances you want to register. The default value is 1 instance.
--
-- * 'caDefaultInstanceName' - The name of the registered, managed instance as it will appear in the Systems Manager console or when you use the AWS command line tools to list Systems Manager resources. /Important:/ Do not enter personally identifiable information in this field.
--
-- * 'caExpirationDate' - The date by which this activation request should expire. The default value is 24 hours.
--
-- * 'caTags' - Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an activation to identify which servers or virtual machines (VMs) in your on-premises environment you intend to activate. In this case, you could specify the following key name/value pairs:     * @Key=OS,Value=Windows@      * @Key=Environment,Value=Production@  /Important:/ When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID and code. When you specify the activation ID and code, tags assigned to the activation are automatically applied to the on-premises servers or VMs. You can't add tags to or delete tags from an existing activation. You can tag your on-premises servers and VMs after they connect to Systems Manager for the first time and are assigned a managed instance ID. This means they are listed in the AWS Systems Manager console with an ID that is prefixed with "mi-". For information about how to add tags to your managed instances, see 'AddTagsToResource' . For information about how to remove tags from your managed instances, see 'RemoveTagsFromResource' .
--
-- * 'caDescription' - A user-defined description of the resource that you want to register with Systems Manager.  /Important:/ Do not enter personally identifiable information in this field.
--
-- * 'caIAMRole' - The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance. This IAM role must provide AssumeRole permissions for the Systems Manager service principal @ssm.amazonaws.com@ . For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html Create an IAM service role for a hybrid environment> in the /AWS Systems Manager User Guide/ .
createActivation ::
  -- | 'caIAMRole'
  Text ->
  CreateActivation
createActivation pIAMRole_ =
  CreateActivation'
    { _caRegistrationLimit = Nothing,
      _caDefaultInstanceName = Nothing,
      _caExpirationDate = Nothing,
      _caTags = Nothing,
      _caDescription = Nothing,
      _caIAMRole = pIAMRole_
    }

-- | Specify the maximum number of managed instances you want to register. The default value is 1 instance.
caRegistrationLimit :: Lens' CreateActivation (Maybe Natural)
caRegistrationLimit = lens _caRegistrationLimit (\s a -> s {_caRegistrationLimit = a}) . mapping _Nat

-- | The name of the registered, managed instance as it will appear in the Systems Manager console or when you use the AWS command line tools to list Systems Manager resources. /Important:/ Do not enter personally identifiable information in this field.
caDefaultInstanceName :: Lens' CreateActivation (Maybe Text)
caDefaultInstanceName = lens _caDefaultInstanceName (\s a -> s {_caDefaultInstanceName = a})

-- | The date by which this activation request should expire. The default value is 24 hours.
caExpirationDate :: Lens' CreateActivation (Maybe UTCTime)
caExpirationDate = lens _caExpirationDate (\s a -> s {_caExpirationDate = a}) . mapping _Time

-- | Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag an activation to identify which servers or virtual machines (VMs) in your on-premises environment you intend to activate. In this case, you could specify the following key name/value pairs:     * @Key=OS,Value=Windows@      * @Key=Environment,Value=Production@  /Important:/ When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID and code. When you specify the activation ID and code, tags assigned to the activation are automatically applied to the on-premises servers or VMs. You can't add tags to or delete tags from an existing activation. You can tag your on-premises servers and VMs after they connect to Systems Manager for the first time and are assigned a managed instance ID. This means they are listed in the AWS Systems Manager console with an ID that is prefixed with "mi-". For information about how to add tags to your managed instances, see 'AddTagsToResource' . For information about how to remove tags from your managed instances, see 'RemoveTagsFromResource' .
caTags :: Lens' CreateActivation [Tag]
caTags = lens _caTags (\s a -> s {_caTags = a}) . _Default . _Coerce

-- | A user-defined description of the resource that you want to register with Systems Manager.  /Important:/ Do not enter personally identifiable information in this field.
caDescription :: Lens' CreateActivation (Maybe Text)
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance. This IAM role must provide AssumeRole permissions for the Systems Manager service principal @ssm.amazonaws.com@ . For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html Create an IAM service role for a hybrid environment> in the /AWS Systems Manager User Guide/ .
caIAMRole :: Lens' CreateActivation Text
caIAMRole = lens _caIAMRole (\s a -> s {_caIAMRole = a})

instance AWSRequest CreateActivation where
  type Rs CreateActivation = CreateActivationResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          CreateActivationResponse'
            <$> (x .?> "ActivationCode")
            <*> (x .?> "ActivationId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateActivation

instance NFData CreateActivation

instance ToHeaders CreateActivation where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.CreateActivation" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateActivation where
  toJSON CreateActivation' {..} =
    object
      ( catMaybes
          [ ("RegistrationLimit" .=) <$> _caRegistrationLimit,
            ("DefaultInstanceName" .=)
              <$> _caDefaultInstanceName,
            ("ExpirationDate" .=) <$> _caExpirationDate,
            ("Tags" .=) <$> _caTags,
            ("Description" .=) <$> _caDescription,
            Just ("IamRole" .= _caIAMRole)
          ]
      )

instance ToPath CreateActivation where
  toPath = const "/"

instance ToQuery CreateActivation where
  toQuery = const mempty

-- | /See:/ 'createActivationResponse' smart constructor.
data CreateActivationResponse = CreateActivationResponse'
  { _carrsActivationCode ::
      !(Maybe Text),
    _carrsActivationId ::
      !(Maybe Text),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CreateActivationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsActivationCode' - The code the system generates when it processes the activation. The activation code functions like a password to validate the activation ID.
--
-- * 'carrsActivationId' - The ID number generated by the system when it processed the activation. The activation ID functions like a user name.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createActivationResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateActivationResponse
createActivationResponse pResponseStatus_ =
  CreateActivationResponse'
    { _carrsActivationCode =
        Nothing,
      _carrsActivationId = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | The code the system generates when it processes the activation. The activation code functions like a password to validate the activation ID.
carrsActivationCode :: Lens' CreateActivationResponse (Maybe Text)
carrsActivationCode = lens _carrsActivationCode (\s a -> s {_carrsActivationCode = a})

-- | The ID number generated by the system when it processed the activation. The activation ID functions like a user name.
carrsActivationId :: Lens' CreateActivationResponse (Maybe Text)
carrsActivationId = lens _carrsActivationId (\s a -> s {_carrsActivationId = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateActivationResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateActivationResponse
