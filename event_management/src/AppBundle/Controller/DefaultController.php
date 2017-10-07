<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\events;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        $em = $this->getDoctrine()->getRepository(events::class);
        $event = $em->findAll();
       // var_dump($books);
        return $this->render('default/home.html.twig',array('events'=>$event));
    }

    /**
     * @Route("/details/{id}", name="detailpage")
     */
    public function detailAction($id,Request $request)
    {
       // replace this example code with whatever you need
        //    var_dump($id);
        $repository = $this->getDoctrine()->getRepository(events::class);
        $event = $repository->find($id);
        return $this->render('default/detail.html.twig',array('events'=>$event));
        

    }

    /**
     * @Route("/remove/{id}", name="removeEvent")
     */
    public function removeAction($id,Request $request)
    {
       // replace this example code with whatever you need
        //    var_dump($id);
        $repository = $this->getDoctrine()->getRepository(events::class);
        $event = $repository->find($id);
        $em = $this->getDoctrine()->getManager();
        $em->remove($event);
        $em->flush();
        return $this->redirectToRoute('homepage');
    }

     /**
     * @Route("/addEvent", name="addEvent")
     */
    public function eventAddAction(Request $request)
    {
       // replace this example code with whatever you need
        //    var_dump($id);
        
        return $this->render('default/addEvent.html.twig');
    }
     /**
     * @Route("/addEventProcess", name="addEventProcess")
     */
    public function eventAddProcessAction(Request $request)
    {
       // replace this example code with whatever you need
        //    var_dump($id);
        $eventName = $request->request->get('eventName');
        $telNumber = $request->request->get('telNumber');
        $description = $request->request->get('description'); 
        $imageLink = $request->request->get('imageLink');
        $contactPerson = $request->request->get('contactPerson');
        $capacity = $request->request->get('capacity');
        $address = $request->request->get('address');
        $url = $request->request->get('url');
        $type = $request->request->get('type');
        $eventBegin = $request->request->get('eventBegin');
        $eventEnd = $request->request->get('eventEnd');



        $event = new events();
        $event->setName($eventName);
        $event->setPhone($telNumber);
        $event->setDescription($description);
        $event->setImagelink($imageLink);
        $event->setContactPerson($contactPerson);
        $event->setCapacity($capacity);
        $event->setAddress($address);
        $event->setUrl($url);
        $event->setType($type);
        $event->setEventBegin($eventBegin);
        $event->setEventEnd($eventEnd);


        $doct = $this->getDoctrine()->getManager();
        $doct->persist($event);
        $doct->flush();
        return $this->redirectToRoute('homepage');
    }

        /**
     * @Route("/edit/{id}", name="editpage")
     */
    public function editRenderPage($id,Request $request)
    {
        
        $repository = $this->getDoctrine()->getRepository(events::class);
        $event = $repository->find($id);       
        return $this->render('default/edit.html.twig',array('events'=>$event));

        
    }

    /**
     * @Route("/editprocess", name="editprocess")
     */
    public function editEventProcess(Request $request)
    {
        
        $eventName = $request->request->get('eventName');
        $telNumber = $request->request->get('telNumber');
        $description = $request->request->get('description'); 
        $imageLink = $request->request->get('imageLink');
        $contactPerson = $request->request->get('contactPerson');
        $capacity = $request->request->get('capacity');
        $address = $request->request->get('address');
        $url = $request->request->get('url');
        $type = $request->request->get('type');
        $eventBegin = $request->request->get('eventBegin');
        $eventEnd = $request->request->get('eventEnd');
        $eventID = $request->request->get('idEvent');


        $event = new events();
        $doct = $this->getDoctrine()->getManager();
        $event = $doct->getRepository('AppBundle:events')->find($eventID);

        $event->setName($eventName);
        $event->setPhone($telNumber);
        $event->setDescription($description);
        $event->setImagelink($imageLink);
        $event->setContactPerson($contactPerson);
        $event->setCapacity($capacity);
        $event->setAddress($address);
        $event->setUrl($url);
        $event->setType($type);
        $event->setEventBegin($eventBegin);
        $event->setEventEnd($eventEnd);


        $doct = $this->getDoctrine()->getManager();
        $doct->persist($event);
        $doct->flush();
        return $this->redirectToRoute('homepage');

        
    }
}
