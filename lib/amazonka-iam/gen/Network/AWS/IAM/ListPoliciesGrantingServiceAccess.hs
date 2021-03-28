{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.ListPoliciesGrantingServiceAccess
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.
--
-- The list of policies returned by the operation depends on the ARN of the identity that you provide.
--
--     * __User__ – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs. 
--
--
--     * __Group__ – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.
--
--
--     * __Role__ – The list of policies includes only the managed and inline policies that are attached to the role.
--
--
-- For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html Managed Policies and Inline Policies> in the /IAM User Guide/ .
-- Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the 'GetUser' or 'GetRole' operations.
module Network.AWS.IAM.ListPoliciesGrantingServiceAccess
    (
    -- * Creating a request
      ListPoliciesGrantingServiceAccess (..)
    , mkListPoliciesGrantingServiceAccess
    -- ** Request lenses
    , lpgsaArn
    , lpgsaServiceNamespaces
    , lpgsaMarker

    -- * Destructuring the response
    , ListPoliciesGrantingServiceAccessResponse (..)
    , mkListPoliciesGrantingServiceAccessResponse
    -- ** Response lenses
    , lpgsarrsPoliciesGrantingServiceAccess
    , lpgsarrsIsTruncated
    , lpgsarrsMarker
    , lpgsarrsResponseStatus
    ) where

import qualified Network.AWS.IAM.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListPoliciesGrantingServiceAccess' smart constructor.
data ListPoliciesGrantingServiceAccess = ListPoliciesGrantingServiceAccess'
  { arn :: Types.Arn
    -- ^ The ARN of the IAM identity (user, group, or role) whose policies you want to list.
  , serviceNamespaces :: Core.NonEmpty Types.ServiceNamespaceType
    -- ^ The service namespace for the AWS services whose policies you want to list.
--
-- To learn the service namespace for a service, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html Actions, Resources, and Condition Keys for AWS Services> in the /IAM User Guide/ . Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, @(service prefix: a4b)@ . For more information about service namespaces, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces> in the /AWS General Reference/ .
  , marker :: Core.Maybe Types.MarkerType
    -- ^ Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListPoliciesGrantingServiceAccess' value with any optional fields omitted.
mkListPoliciesGrantingServiceAccess
    :: Types.Arn -- ^ 'arn'
    -> Core.NonEmpty Types.ServiceNamespaceType -- ^ 'serviceNamespaces'
    -> ListPoliciesGrantingServiceAccess
mkListPoliciesGrantingServiceAccess arn serviceNamespaces
  = ListPoliciesGrantingServiceAccess'{arn, serviceNamespaces,
                                       marker = Core.Nothing}

-- | The ARN of the IAM identity (user, group, or role) whose policies you want to list.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsaArn :: Lens.Lens' ListPoliciesGrantingServiceAccess Types.Arn
lpgsaArn = Lens.field @"arn"
{-# INLINEABLE lpgsaArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | The service namespace for the AWS services whose policies you want to list.
--
-- To learn the service namespace for a service, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html Actions, Resources, and Condition Keys for AWS Services> in the /IAM User Guide/ . Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, @(service prefix: a4b)@ . For more information about service namespaces, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces> in the /AWS General Reference/ .
--
-- /Note:/ Consider using 'serviceNamespaces' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsaServiceNamespaces :: Lens.Lens' ListPoliciesGrantingServiceAccess (Core.NonEmpty Types.ServiceNamespaceType)
lpgsaServiceNamespaces = Lens.field @"serviceNamespaces"
{-# INLINEABLE lpgsaServiceNamespaces #-}
{-# DEPRECATED serviceNamespaces "Use generic-lens or generic-optics with 'serviceNamespaces' instead"  #-}

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsaMarker :: Lens.Lens' ListPoliciesGrantingServiceAccess (Core.Maybe Types.MarkerType)
lpgsaMarker = Lens.field @"marker"
{-# INLINEABLE lpgsaMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

instance Core.ToQuery ListPoliciesGrantingServiceAccess where
        toQuery ListPoliciesGrantingServiceAccess{..}
          = Core.toQueryPair "Action"
              ("ListPoliciesGrantingServiceAccess" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-05-08" :: Core.Text)
              Core.<> Core.toQueryPair "Arn" arn
              Core.<>
              Core.toQueryPair "ServiceNamespaces"
                (Core.toQueryList "member" serviceNamespaces)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Marker") marker

instance Core.ToHeaders ListPoliciesGrantingServiceAccess where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ListPoliciesGrantingServiceAccess where
        type Rs ListPoliciesGrantingServiceAccess =
             ListPoliciesGrantingServiceAccessResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXMLWrapper
              "ListPoliciesGrantingServiceAccessResult"
              (\ s h x ->
                 ListPoliciesGrantingServiceAccessResponse' Core.<$>
                   (x Core..@ "PoliciesGrantingServiceAccess" Core..@! Core.mempty
                      Core..<@> Core.parseXMLList "member")
                     Core.<*> x Core..@? "IsTruncated"
                     Core.<*> x Core..@? "Marker"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkListPoliciesGrantingServiceAccessResponse' smart constructor.
data ListPoliciesGrantingServiceAccessResponse = ListPoliciesGrantingServiceAccessResponse'
  { policiesGrantingServiceAccess :: [Types.ListPoliciesGrantingServiceAccessEntry]
    -- ^ A @ListPoliciesGrantingServiceAccess@ object that contains details about the permissions policies attached to the specified identity (user, group, or role).
  , isTruncated :: Core.Maybe Core.Bool
    -- ^ A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
  , marker :: Core.Maybe Types.ResponseMarkerType
    -- ^ When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListPoliciesGrantingServiceAccessResponse' value with any optional fields omitted.
mkListPoliciesGrantingServiceAccessResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListPoliciesGrantingServiceAccessResponse
mkListPoliciesGrantingServiceAccessResponse responseStatus
  = ListPoliciesGrantingServiceAccessResponse'{policiesGrantingServiceAccess
                                                 = Core.mempty,
                                               isTruncated = Core.Nothing, marker = Core.Nothing,
                                               responseStatus}

-- | A @ListPoliciesGrantingServiceAccess@ object that contains details about the permissions policies attached to the specified identity (user, group, or role).
--
-- /Note:/ Consider using 'policiesGrantingServiceAccess' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsarrsPoliciesGrantingServiceAccess :: Lens.Lens' ListPoliciesGrantingServiceAccessResponse [Types.ListPoliciesGrantingServiceAccessEntry]
lpgsarrsPoliciesGrantingServiceAccess = Lens.field @"policiesGrantingServiceAccess"
{-# INLINEABLE lpgsarrsPoliciesGrantingServiceAccess #-}
{-# DEPRECATED policiesGrantingServiceAccess "Use generic-lens or generic-optics with 'policiesGrantingServiceAccess' instead"  #-}

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsarrsIsTruncated :: Lens.Lens' ListPoliciesGrantingServiceAccessResponse (Core.Maybe Core.Bool)
lpgsarrsIsTruncated = Lens.field @"isTruncated"
{-# INLINEABLE lpgsarrsIsTruncated #-}
{-# DEPRECATED isTruncated "Use generic-lens or generic-optics with 'isTruncated' instead"  #-}

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsarrsMarker :: Lens.Lens' ListPoliciesGrantingServiceAccessResponse (Core.Maybe Types.ResponseMarkerType)
lpgsarrsMarker = Lens.field @"marker"
{-# INLINEABLE lpgsarrsMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lpgsarrsResponseStatus :: Lens.Lens' ListPoliciesGrantingServiceAccessResponse Core.Int
lpgsarrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lpgsarrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
